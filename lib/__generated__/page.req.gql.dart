// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:graphql_caching/__generated__/page.ast.gql.dart' as _i5;
import 'package:graphql_caching/__generated__/page.data.gql.dart' as _i2;
import 'package:graphql_caching/__generated__/page.var.gql.dart' as _i3;
import 'package:graphql_caching/__generated__/serializers.gql.dart' as _i6;

part 'page.req.gql.g.dart';

abstract class GPageReq
    implements
        Built<GPageReq, GPageReqBuilder>,
        _i1.OperationRequest<_i2.GPageData, _i3.GPageVars> {
  GPageReq._();

  factory GPageReq([void Function(GPageReqBuilder b) updates]) = _$GPageReq;

  static void _initializeBuilder(GPageReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Page',
    )
    ..executeOnListen = true;

  @override
  _i3.GPageVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GPageData? Function(
    _i2.GPageData?,
    _i2.GPageData?,
  )? get updateResult;
  @override
  _i2.GPageData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GPageData? parseData(Map<String, dynamic> json) =>
      _i2.GPageData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GPageData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GPageData, _i3.GPageVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GPageReq> get serializer => _$gPageReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GPageReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPageReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GPageReq.serializer,
        json,
      );
}
