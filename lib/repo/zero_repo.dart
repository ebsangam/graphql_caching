import 'package:ferry/ferry.dart';
import 'package:graphql_caching/core/gql_client_extension.dart';
import 'package:graphql_caching/gql/__generated__/posts.data.gql.dart';
import 'package:graphql_caching/gql/__generated__/posts.req.gql.dart';
import 'package:graphql_caching/model/post.dart';
import 'package:graphql_caching/model/result.dart';
import 'package:injectable/injectable.dart';

@injectable
class ZeroRepo {
  ZeroRepo(this.client);
  final Client client;

  ResultStream<List<Post>> getPost() {
    return client.requestMaped(
      request: GPostsReq(),
      mapper: gPostsMapPost,
    );
  }
}

List<Post> gPostsMapPost(GPostsData? data) =>
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
