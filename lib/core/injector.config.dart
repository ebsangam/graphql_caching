// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:ferry/ferry.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql_caching/core/injector.dart' as _i6;
import 'package:graphql_caching/feature/post/bloc/posts_bloc.dart' as _i5;
import 'package:graphql_caching/repo/zero_repo.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModule = _$InjectableModule();
    gh.factory<_i3.Client>(() => injectableModule.client);
    await gh.factoryAsync<_i3.Cache>(
      () => injectableModule.getFerryCache(),
      preResolve: true,
    );
    gh.factory<_i4.ZeroRepo>(() => _i4.ZeroRepo(gh<_i3.Client>()));
    gh.factory<_i5.PostsBloc>(() => _i5.PostsBloc(gh<_i4.ZeroRepo>()));
    return this;
  }
}

class _$InjectableModule extends _i6.InjectableModule {}
