import 'package:ferry/ferry.dart';
import 'package:ferry/typed_links.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:graphql_caching/ferry/create_post_handler.dart';

final client = Client(
  link: HttpLink('https://graphqlzero.almansi.me/api'),
  cache: Cache(
    store: HiveStore(Hive.box('gqlCache')),
    // typePolicies: typPolicies,
  ),
  defaultFetchPolicies: {
    OperationType.query: FetchPolicy.CacheAndNetwork,
  },
  updateCacheHandlers: {
    'createPostHander': createPostHandler,
  },
);
