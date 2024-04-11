import 'package:ferry/typed_links.dart';
import 'package:graphql_caching/gql/mutation/__generated__/create_post.data.gql.dart';
import 'package:graphql_caching/gql/mutation/__generated__/create_post.var.gql.dart';
import 'package:graphql_caching/gql/query/__generated__/posts.data.gql.dart';
import 'package:graphql_caching/gql/query/__generated__/posts.req.gql.dart';
import 'package:graphql_caching/gql/query/__generated__/posts.var.gql.dart';

void createPostHandler(
  CacheProxy proxy,
  OperationResponse<GCreatePostData, GCreatePostVars> response,
) {
  final req = GPostsReq(
    (b) => b..vars.options.paginate.limit = 10,
  );
  final posts = proxy.readQuery<GPostsData, GPostsVars>(
    req,
  )!;
  final rebuilt = posts.rebuild(
    (b) => b
      ..posts.data.first = GPostsData_posts_data.fromJson(
        response.data!.createPost!.toJson(),
      ),
  );
  proxy.writeQuery(
    req,
    rebuilt,
  );
}
