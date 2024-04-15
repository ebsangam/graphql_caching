import 'package:ferry/ferry.dart';
import 'package:ferry/typed_links.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:get_it/get_it.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:graphql_caching/cache_handlers/create_post_hanlder.dart';
import 'package:graphql_caching/core/injector.config.dart';
import 'package:graphql_caching/core/type_policy.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(throwOnMissingDependencies: true)
Future<void> configureInjection() => getIt.init();

@module
abstract class InjectableModule {
  @preResolve
  Future<Cache> getFerryCache() {
    // ignore: inference_failure_on_function_invocation
    return Hive.openBox('gqlCache').then(
      (value) => Cache(
        store: HiveStore(value),
        typePolicies: typePolicies,
      ),
    );
  }

  Client get client {
    return Client(
      link: HttpLink('https://graphqlzero.almansi.me/api'),
      cache: getIt<Cache>(),
      defaultFetchPolicies: {
        OperationType.query: FetchPolicy.CacheAndNetwork,
      },
      updateCacheHandlers: {
        'createPostHander': createPostHandler,
      },
    );
  }
}
