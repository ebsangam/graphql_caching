import 'package:flutter/material.dart';
import 'package:graphql_caching/model/post.dart';

class PostView extends StatelessWidget {
  const PostView({
    required this.post,
    super.key,
    this.onDismissed,
  });

  final Post post;
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
