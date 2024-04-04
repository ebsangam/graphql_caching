import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:graphql_caching/client.dart';
import 'package:graphql_caching/ferry_builder/ferry_builder.dart';
import 'package:graphql_caching/gql/__generated__/posts.req.gql.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  final client = await initClient();
  runApp(Provider(
    create: (context) => client,
    child: const MyApp(),
  ));
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
        ),
        body: FerryBuilder(
          client: context.read<Client>(),
          operationRequest: GPostsReq(),
          builder: (context, response) {
            if (response.loading) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }

            if (response.data != null) {
              return ListView.builder(
                itemCount: response.data!.posts?.data?.length ?? 0,
                itemBuilder: (context, index) {
                  final post = response.data!.posts!.data![index]!;
                  return Card(
                    margin: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            post.title!,
                            style: Theme.of(context).textTheme.titleMedium,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            '${post.user!.name!}, ${post.user!.email!.toLowerCase()}',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text(post.body ?? ''),
                        ],
                      ),
                    ),
                  );
                },
              );
            }

            if (response.hasErrors) {
              return Center(
                child: Text(response.linkException.toString()),
              );
            }
            return const Text('Wtf');
          },
        ),
      ),
    );
  }
}
