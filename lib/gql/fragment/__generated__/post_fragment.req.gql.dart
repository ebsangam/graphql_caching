// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:graphql_caching/gql/__generated__/serializers.gql.dart' as _i6;
import 'package:graphql_caching/gql/fragment/__generated__/post_fragment.ast.gql.dart'
    as _i4;
import 'package:graphql_caching/gql/fragment/__generated__/post_fragment.data.gql.dart'
    as _i2;
import 'package:graphql_caching/gql/fragment/__generated__/post_fragment.var.gql.dart'
    as _i3;

part 'post_fragment.req.gql.g.dart';

abstract class GPostFragmentReq
    implements
        Built<GPostFragmentReq, GPostFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GPostFragmentData, _i3.GPostFragmentVars> {
  GPostFragmentReq._();

  factory GPostFragmentReq([void Function(GPostFragmentReqBuilder b) updates]) =
      _$GPostFragmentReq;

  static void _initializeBuilder(GPostFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'PostFragment';

  @override
  _i3.GPostFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
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
