// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_caching/gql/__generated__/serializers.gql.dart' as _i1;

part 'delete_post.data.gql.g.dart';

abstract class GDeletePostData
    implements Built<GDeletePostData, GDeletePostDataBuilder> {
  GDeletePostData._();

  factory GDeletePostData([void Function(GDeletePostDataBuilder b) updates]) =
      _$GDeletePostData;

  static void _initializeBuilder(GDeletePostDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get deletePost;
  static Serializer<GDeletePostData> get serializer =>
      _$gDeletePostDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GDeletePostData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GDeletePostData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GDeletePostData.serializer,
        json,
      );
}
