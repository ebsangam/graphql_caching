// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ferry/ferry.dart';
import 'package:ferry/typed_links.dart';
import 'package:flutter/material.dart';

typedef ResultStream<T> = Stream<Result<T>>;

enum DataSource {
  /// A placeholder response source which can be used when waiting for
  /// another source
  none,

  /// Data originated from the client's [Link]
  link,

  /// Data originated from the [Cache]
  cache,

  /// Data originated from a user-provided [OperationRequest.optimisticResponse]
  optimistic,
}

@immutable
class Result<T> {
  final DataSource dataSource;
  final T? data;
  final GqlError? error;

  const Result({
    this.dataSource = DataSource.none,
    this.data,
    this.error,
  }) : assert(
          data != null || error != null,
          'Either data or error must not be null.',
        );

  bool get hasData => data != null;
  bool get hasError => error != null;

  @override
  bool operator ==(covariant Result<T> other) {
    if (identical(this, other)) return true;

    return other.dataSource == dataSource &&
        other.data == data &&
        other.error == error;
  }

  @override
  int get hashCode => dataSource.hashCode ^ data.hashCode ^ error.hashCode;
}

sealed class GqlError {}

class LinkError extends GqlError {}

class ServerError extends GqlError {}
