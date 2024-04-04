import 'package:ferry/ferry.dart';
import 'package:graphql_caching/gql/__generated__/posts.req.gql.dart';
import 'package:graphql_caching/model/post.dart';
import 'package:graphql_caching/model/result.dart';
import 'package:graphql_caching/repo/gql_client.dart';

class ZeroRepo {
  final Client client;

  ZeroRepo(this.client);

  ResultStream<List<Post>> getPost() {
    return client.requestMaped(
      request: GPostsReq(),
      mapper: gPostsMapPost,
    );
  }

  List<Post> gPostsMapPost(data) =>
      data?.posts?.data?.map((it) {
        return Post(
          id: it!.id!,
          title: it.title!,
          body: it.body!,
          userName: it.user!.name!,
          userEmail: it.user!.email!,
        );
      }).toList() ??
      [];
}
