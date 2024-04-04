// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_caching/__generated__/schema.schema.gql.dart' as _i1;
import 'package:graphql_caching/__generated__/serializers.gql.dart' as _i2;

part 'posts.var.gql.g.dart';

abstract class GPostsVars implements Built<GPostsVars, GPostsVarsBuilder> {
  GPostsVars._();

  factory GPostsVars([void Function(GPostsVarsBuilder b) updates]) =
      _$GPostsVars;

  _i1.GPageQueryOptions? get options;
  static Serializer<GPostsVars> get serializer => _$gPostsVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPostsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPostsVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPostsVars.serializer,
        json,
      );
}

abstract class GPostFragmentVars
    implements Built<GPostFragmentVars, GPostFragmentVarsBuilder> {
  GPostFragmentVars._();

  factory GPostFragmentVars(
          [void Function(GPostFragmentVarsBuilder b) updates]) =
      _$GPostFragmentVars;

  static Serializer<GPostFragmentVars> get serializer =>
      _$gPostFragmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GPostFragmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPostFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GPostFragmentVars.serializer,
        json,
      );
}
