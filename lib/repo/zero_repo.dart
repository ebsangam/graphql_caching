import 'package:ferry/ferry.dart';
import 'package:graphql_caching/core/gql_client_extension.dart';
import 'package:graphql_caching/gql/query/__generated__/posts.data.gql.dart';
import 'package:graphql_caching/gql/query/__generated__/posts.req.gql.dart';
import 'package:graphql_caching/model/post.dart';
import 'package:graphql_caching/model/result.dart';
import 'package:injectable/injectable.dart';

@injectable
class ZeroRepo {
  ZeroRepo(this.client);
  final Client client;

  ResultStream<List<Post>> get posts {
    return client.run(
      request: GPostsReq(),
      mapper: gPostsMapPost,
    );
  }

  void refresh() {
    client.requestController.add(GPostsReq());
  }

  void delete() {
    // client.run(
    //   request: GDe,
    //   mapper: mapper,
    // );
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
