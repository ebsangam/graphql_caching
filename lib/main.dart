import 'dart:developer';

import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:graphql_caching/core/gql_client_extension.dart';
import 'package:graphql_caching/core/injector.dart';
import 'package:graphql_caching/gql/__generated__/posts.req.gql.dart';
import 'package:graphql_caching/model/post.dart';
import 'package:graphql_caching/repo/zero_repo.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await Hive.initFlutter();
  await configureInjection();
  runApp(
    Provider(
      create: (context) => getIt<Client>(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('GraphQLZero'),
          actions: [
            IconButton(
              onPressed: () {
                Provider.of<Client>(context, listen: false)
                    .requestController
                    .add(GPostsReq());
              },
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        body: StreamBuilder(
          stream: context.read<Client>().requestMaped(
                request: GPostsReq(),
                mapper: gPostsMapPost,
              )..listen((event) {
              log('${event.data.hashCode}: ${event.data?.length ?? 0}');
            }),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data?.data?.length ?? 0,
                itemBuilder: (context, index) {
                  final post = snapshot.data?.data![index];
                  return PostView(post: post!);
                },
              );
            }
            if (snapshot.hasError) {
              return Text(snapshot.error!.toString());
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

class PostView extends StatelessWidget {
  const PostView({
    required this.post,
    super.key,
  });

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(post.id),
      onDismissed: (direction) {
        final cache = Provider.of<Client>(context, listen: false).cache;

        final postFragmentReq = GPostFragmentReq(
          (b) => b..idFields = {'id': post.id},
        );

        final data = cache.readFragment(postFragmentReq);

        final entityId = cache.identify(data)!;
        cache.evict(entityId);

        log(entityId);
        // cache.writeFragment(
        //   postFragmentReq,
        //   data.rebuild((b) => b..stars = 4),
        // );
      },
      child: Card(
        margin: const EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${post.id}. ${post.title}',
                style: Theme.of(context).textTheme.titleMedium,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                '${post.userName}, ${post.userEmail.toLowerCase()}',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Text(post.body ?? ''),
            ],
          ),
        ),
      ),
    );
  }
}
