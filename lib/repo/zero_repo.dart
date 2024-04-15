import 'package:ferry/ferry.dart' hide DataSource;
import 'package:ferry/typed_links.dart' hide DataSource;
import 'package:graphql_caching/core/gql_client_extension.dart';
import 'package:graphql_caching/gql/fragment/__generated__/post_fragment.data.gql.dart';
import 'package:graphql_caching/gql/fragment/__generated__/post_fragment.req.gql.dart';
import 'package:graphql_caching/gql/mutation/__generated__/create_post.req.gql.dart';
import 'package:graphql_caching/gql/mutation/__generated__/delete_post.req.gql.dart';
import 'package:graphql_caching/gql/query/__generated__/posts.req.gql.dart';
import 'package:graphql_caching/model/post.dart';
import 'package:graphql_caching/model/result.dart';
import 'package:injectable/injectable.dart';

typedef UpdateCacheHandler<TData, TVars> = void Function(
  CacheProxy proxy,
  OperationResponse<TData, TVars> response,
);

@injectable
class ZeroRepo {
  ZeroRepo(this._client);
  final Client _client;

  static final _gPostReq = GPostsReq(
    (b) => b..vars.options.paginate.limit = 10,
  );

  ResultStream<List<Post>> get posts {
    return _client.queryStream(
      request: _gPostReq,
      mapper: (data) {
        return data?.posts?.data?.map((p0) => mapPost(p0!)).toList() ?? [];
      },
    );
  }

  void refresh() {
    _client.requestController.add(_gPostReq);
  }

  Stream<Result<Post>> create({
    required String title,
    required String body,
  }) {
    final createPostReq = GCreatePostReq(
      (b) => b
        ..vars.input.title = title
        ..vars.input.body = body
        ..optimisticResponse.createPost.user.name = '__optimistic__'
        ..optimisticResponse.createPost.user.email = '__optimistic__'
        ..optimisticResponse.createPost.id = '__optimistic__'
        ..optimisticResponse.createPost.title = title
        ..optimisticResponse.createPost.body = body
        ..updateCacheHandlerKey = 'createPostHander',
    );

    return _client.queryStream(
      request: createPostReq,
      mapper: (data) => mapPost(data!.createPost!),
    );
  }

  void delete(String id) {
    _client.queryStream(
      request: GDeletePostReq((b) => b..vars.id = id),
      mapper: (data) => data?.deletePost,
    );

    final cache = _client.cache;

    final postFragmentReq = GPostFragmentReq(
      (b) => b..idFields = {'id': id},
    );

    final data = cache.readFragment(postFragmentReq);

    final entityId = cache.identify(data);
    cache.evict(entityId!);
  }
}

Post mapPost(GPostFragment it) {
  return Post(
    id: it.id ?? '',
    title: it.title ?? '',
    body: it.body ?? ' ',
    userName: it.user?.name ?? 'Lucifer',
    userEmail: it.user?.email ?? 'lucifer@emai.com',
  );
}
