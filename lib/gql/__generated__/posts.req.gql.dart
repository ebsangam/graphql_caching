// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i7;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:graphql_caching/__generated__/serializers.gql.dart' as _i6;
import 'package:graphql_caching/gql/__generated__/posts.ast.gql.dart' as _i5;
import 'package:graphql_caching/gql/__generated__/posts.data.gql.dart' as _i2;
import 'package:graphql_caching/gql/__generated__/posts.var.gql.dart' as _i3;

part 'posts.req.gql.g.dart';

abstract class GPostsReq
    implements
        Built<GPostsReq, GPostsReqBuilder>,
        _i1.OperationRequest<_i2.GPostsData, _i3.GPostsVars> {
  GPostsReq._();

  factory GPostsReq([void Function(GPostsReqBuilder b) updates]) = _$GPostsReq;

  static void _initializeBuilder(GPostsReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Posts',
    )
    ..executeOnListen = true;

  @override
  _i3.GPostsVars get vars;
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
  _i2.GPostsData? Function(
    _i2.GPostsData?,
    _i2.GPostsData?,
  )? get updateResult;
  @override
  _i2.GPostsData? get optimisticResponse;
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
  _i2.GPostsData? parseData(Map<String, dynamic> json) =>
      _i2.GPostsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GPostsData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GPostsData, _i3.GPostsVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GPostsReq> get serializer => _$gPostsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GPostsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPostsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GPostsReq.serializer,
        json,
      );
}

abstract class GPostFragmentReq
    implements
        Built<GPostFragmentReq, GPostFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GPostFragmentData, _i3.GPostFragmentVars> {
  GPostFragmentReq._();

  factory GPostFragmentReq([void Function(GPostFragmentReqBuilder b) updates]) =
      _$GPostFragmentReq;

  static void _initializeBuilder(GPostFragmentReqBuilder b) => b
    ..document = _i5.document
    ..fragmentName = 'PostFragment';

  @override
  _i3.GPostFragmentVars get vars;
  @override
  _i7.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GPostFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GPostFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GPostFragmentData data) => data.toJson();

  static Serializer<GPostFragmentReq> get serializer =>
      _$gPostFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GPostFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPostFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GPostFragmentReq.serializer,
        json,
      );
}
