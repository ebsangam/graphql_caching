import 'dart:developer';

import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:graphql_caching/core/injector.dart';
import 'package:graphql_caching/gql/query/__generated__/posts.req.gql.dart';
import 'package:graphql_caching/model/post.dart';

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
        final cache = getIt<Client>().cache;

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
              Text(post.body),
            ],
          ),
        ),
      ),
    );
  }
}
