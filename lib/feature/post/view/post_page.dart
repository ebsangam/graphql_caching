import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_caching/core/injector.dart';
import 'package:graphql_caching/feature/post/bloc/posts_bloc.dart';
import 'package:graphql_caching/feature/post/view/widget/post_view.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PostsBloc>()..add(PostsFetchEvent()),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('GraphQLZero'),
              actions: [
                IconButton(
                  onPressed: () {
                    context.read<PostsBloc>().add(PostsRefreshEvent());
                  },
                  icon: const Icon(Icons.refresh),
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                context.read<PostsBloc>().add(
                      PostsCreateEvent(
                        title: 'New Post',
                        body: 'This is new post.',
                      ),
                    );
              },
              child: const Icon(Icons.add),
            ),
            body: BlocBuilder<PostsBloc, PostsState>(
              builder: (context, state) {
                if (state.hasError && !state.hasData) {
                  return Center(
                    child: Text(state.error!.toString()),
                  );
                }
                if (state.hasData) {
                  return ListBuilder(
                    hasMore: state.hasMore,
                    onEndReach: () {
                      // final page = (state.posts!.length / 10).ceil();
                      log('ListView.builder');
                      context.read<PostsBloc>().add(PostsNextPageEvent());
                    },
                    items: state.posts!,
                    builder: (context, item) => PostView(
                      post: item,
                      onDismissed: (_) {
                        context
                            .read<PostsBloc>()
                            .add(PostsDeleteEvent(item.id));
                      },
                    ),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class ListBuilder<T> extends StatelessWidget {
  const ListBuilder({
    required this.items,
    required this.builder,
    required this.onEndReach,
    required this.hasMore,
    super.key,
  });

  final List<T> items;
  final VoidCallback onEndReach;
  final bool hasMore;

  final Widget Function(BuildContext context, T item) builder;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length + 1,
      itemBuilder: (context, index) {
        if (index == items.length) {
          if (!hasMore) return const SizedBox.shrink();
          onEndReach();
          return const Center(child: CircularProgressIndicator());
        }
        return builder(context, items[index]);
      },
    );
  }
}
