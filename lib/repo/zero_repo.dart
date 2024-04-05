import 'package:ferry/ferry.dart';
import 'package:graphql_caching/core/gql_client_extension.dart';
import 'package:graphql_caching/gql/mutation/__generated__/delete_post.req.gql.dart';
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
    return client.queryStream(
      request: GPostsReq(),
      mapper: gPostsMapPost,
    );
  }

  void refresh() {
    client.requestController.add(GPostsReq());
  }

  void delete(String id) {
    client.query(
      request: GDeletePostReq(
        (b) => b
          ..vars.id = id
          ..fetchPolicy = FetchPolicy.NetworkOnly,
      ),
      mapper: (data) => data!.deletePost!,
    );

    // final cache = getIt<Client>().cache;

    // final postFragmentReq = GPostFragmentReq(
    //   (b) => b..idFields = {'id': post.id},
    // );

    // final data = cache.readFragment(postFragmentReq);

    // final entityId = cache.identify(data);
    // cache.evict(entityId!);

    // cache.writeFragment(
    //   postFragmentReq,
    //   data.rebuild((b) => b..stars = 4),
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
