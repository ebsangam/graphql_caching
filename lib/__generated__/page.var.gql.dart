// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_caching/__generated__/serializers.gql.dart' as _i1;

part 'page.var.gql.g.dart';

abstract class GPageVars implements Built<GPageVars, GPageVarsBuilder> {
  GPageVars._();

  factory GPageVars([void Function(GPageVarsBuilder b) updates]) = _$GPageVars;

  static Serializer<GPageVars> get serializer => _$gPageVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPageVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPageVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPageVars.serializer,
        json,
      );
}
