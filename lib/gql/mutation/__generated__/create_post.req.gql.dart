// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:graphql_caching/gql/__generated__/serializers.gql.dart' as _i6;
import 'package:graphql_caching/gql/mutation/__generated__/create_post.ast.gql.dart'
    as _i5;
import 'package:graphql_caching/gql/mutation/__generated__/create_post.data.gql.dart'
    as _i2;
import 'package:graphql_caching/gql/mutation/__generated__/create_post.var.gql.dart'
    as _i3;

part 'create_post.req.gql.g.dart';

abstract class GCreatePostReq
    implements
        Built<GCreatePostReq, GCreatePostReqBuilder>,
        _i1.OperationRequest<_i2.GCreatePostData, _i3.GCreatePostVars> {
  GCreatePostReq._();

  factory GCreatePostReq([void Function(GCreatePostReqBuilder b) updates]) =
      _$GCreatePostReq;

  static void _initializeBuilder(GCreatePostReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'CreatePost',
    )
    ..executeOnListen = true;

  @override
  _i3.GCreatePostVars get vars;
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
  _i2.GCreatePostData? Function(
    _i2.GCreatePostData?,
    _i2.GCreatePostData?,
  )? get updateResult;
  @override
  _i2.GCreatePostData? get optimisticResponse;
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
  _i2.GCreatePostData? parseData(Map<String, dynamic> json) =>
      _i2.GCreatePostData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GCreatePostData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GCreatePostData, _i3.GCreatePostVars>
      transformOperation(_i4.Operation Function(_i4.Operation) transform) =>
          this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GCreatePostReq> get serializer =>
      _$gCreatePostReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GCreatePostReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreatePostReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GCreatePostReq.serializer,
        json,
      );
}
