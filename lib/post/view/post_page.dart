import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:graphql_caching/ferry/client.dart';
import 'package:graphql_caching/gql/query/__generated__/posts.req.gql.dart';
import 'package:graphql_caching/post/view/widget/post_view.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('GraphQLZero'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              client
                  .request(
                    GPostsReq(
                      (b) => b
                        ..vars.options.paginate.limit = 10
                        ..vars.options.paginate.page = 2,
                    ),
                  )
                  .firstWhere(
                    (element) => element.dataSource == DataSource.Link,
                  );
            },
            child: const Icon(Icons.add),
          ),
          body: StreamBuilder(
            stream: client.request(
              GPostsReq(
                (b) => b
                  ..vars.options.paginate.limit = 10
                  ..vars.options.paginate.page = 1,
              ),
            ),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              }
              final res = snapshot.requireData;
              if (res.loading) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              }
              if (res.hasErrors) {
                return const Center(
                  child: Text('Error!'),
                );
              }
              final list = res.data!.posts!.data!;
              return ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  final post = list[index]!;
                  return PostView(
                    post: post,
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
