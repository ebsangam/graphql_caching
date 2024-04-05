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
            body: BlocBuilder<PostsBloc, PostsState>(
              builder: (context, state) {
                if (state.hasError) {
                  return Center(
                    child: Text(state.error!.toString()),
                  );
                }
                if (state.hasData) {
                  return ListView.builder(
                    itemCount: state.posts!.length,
                    itemBuilder: (context, index) {
                      final post = state.posts![index];
                      return PostView(post: post);
                    },
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
