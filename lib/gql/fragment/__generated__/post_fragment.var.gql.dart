// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_caching/gql/__generated__/serializers.gql.dart' as _i1;

part 'post_fragment.var.gql.g.dart';

abstract class GPostFragmentVars
    implements Built<GPostFragmentVars, GPostFragmentVarsBuilder> {
  GPostFragmentVars._();

  factory GPostFragmentVars(
          [void Function(GPostFragmentVarsBuilder b) updates]) =
      _$GPostFragmentVars;

  static Serializer<GPostFragmentVars> get serializer =>
      _$gPostFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPostFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostFragmentVars.serializer,
        json,
      );
}
