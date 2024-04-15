import 'package:flutter/material.dart';
import 'package:graphql_caching/gql/query/__generated__/posts.data.gql.dart';

class PostView extends StatelessWidget {
  const PostView({
    required this.post,
    super.key,
    this.onDismissed,
  });

  final GPostsData_posts_data post;
  final void Function(DismissDirection direction)? onDismissed;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(post.id),
      onDismissed: onDismissed,
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
                '${post.user?.name ?? 'null'}, ${post.user?.email?.toLowerCase() ?? 'null'}',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              Text(post.body ?? 'null'),
            ],
          ),
        ),
      ),
    );
  }
}
