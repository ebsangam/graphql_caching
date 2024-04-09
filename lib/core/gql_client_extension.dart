import 'dart:async';

import 'package:ferry/ferry.dart' hide DataSource;
import 'package:ferry/typed_links.dart' as tl;
import 'package:graphql_caching/model/result.dart';

extension GqlClient on Client {
  ResultStream<T> queryStream<T, TData, TVars>({
    required OperationRequest<TData, TVars> request,
    required T Function(TData? data) mapper,
    NextTypedLink<TData, TVars>? forward,
  }) {
    /// Cached TData that was not null at a point.
    /// If ferry gives a valid data from cache, then subsequent request returns
    /// error data will be lost. It will preserve the old valid data if there
    /// were any before the error.
    TData? cacheData;

    return this.request(request, forward).transform(
      StreamTransformer<OperationResponse<TData, TVars>,
          Result<T>>.fromHandlers(
        handleData: (data, sink) {
          if (data.data != null) cacheData = data.data;
          sink.add(
            _mapResult(
              value: data,
              mapper: mapper,
              previousData: cacheData,
            ),
          );
        },
      ),
    );
  }

  ResultFuture<T> query<T, TData, TVars>({
    required OperationRequest<TData, TVars> request,
    required T Function(TData? data) mapper,
    NextTypedLink<TData, TVars>? forward,
  }) {
    return this
        .request(request, forward)
        .first
        .then((value) => _mapResult(value: value, mapper: mapper));
  }

  Result<T> _mapResult<T, TData, TVars>({
    required OperationResponse<TData, TVars> value,
    required T Function(TData? data) mapper,
    TData? previousData,
  }) {
    GqlError? error;

    if (value.hasErrors) {
      if (value.graphqlErrors?.isNotEmpty ?? false) {
        error = ServerError();
      } else if (value.linkException != null) {
        error = LinkError();
      }
    }
    return Result(
      data: mapper.call(value.data ?? previousData),
      dataSource: switch (value.dataSource) {
        tl.DataSource.None => DataSource.none,
        tl.DataSource.Link => DataSource.link,
        tl.DataSource.Cache => DataSource.cache,
        tl.DataSource.Optimistic => DataSource.optimistic,
      },
      error: error,
    );
  }
}
