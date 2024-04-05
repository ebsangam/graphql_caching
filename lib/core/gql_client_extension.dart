import 'package:ferry/ferry.dart' hide DataSource;
import 'package:ferry/typed_links.dart' as tl;
import 'package:graphql_caching/model/result.dart';

extension GqlClient on Client {
  ResultStream<T> queryStream<T, TData, TVars>({
    required OperationRequest<TData, TVars> request,
    required T Function(TData? data) mapper,
    NextTypedLink<TData, TVars>? forward,
  }) {
    return this.request(request, forward).map((event) {
      GqlError? error;

      if (event.hasErrors) {
        if (event.graphqlErrors?.isNotEmpty ?? false) {
          error = ServerError();
        } else if (event.linkException != null) {
          error = LinkError();
        }
      }
      return Result(
        data: mapper.call(event.data),
        dataSource: switch (event.dataSource) {
          tl.DataSource.None => DataSource.none,
          tl.DataSource.Link => DataSource.link,
          tl.DataSource.Cache => DataSource.cache,
          tl.DataSource.Optimistic => DataSource.optimistic,
        },
        error: error,
      );
    });
  }

  ResultFuture<T> query<T, TData, TVars>({
    required OperationRequest<TData, TVars> request,
    required T Function(TData? data) mapper,
    NextTypedLink<TData, TVars>? forward,
  }) {
    return this.request(request, forward).first.then((value) {
      GqlError? error;

      if (value.hasErrors) {
        if (value.graphqlErrors?.isNotEmpty ?? false) {
          error = ServerError();
        } else if (value.linkException != null) {
          error = LinkError();
        }
      }
      return Result(
        data: mapper.call(value.data),
        dataSource: switch (value.dataSource) {
          tl.DataSource.None => DataSource.none,
          tl.DataSource.Link => DataSource.link,
          tl.DataSource.Cache => DataSource.cache,
          tl.DataSource.Optimistic => DataSource.optimistic,
        },
        error: error,
      );
    });
  }
}
