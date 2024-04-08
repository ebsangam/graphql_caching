// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_caching/gql/__generated__/serializers.gql.dart' as _i1;

part 'update_post.data.gql.g.dart';

abstract class GUpdatePostData
    implements Built<GUpdatePostData, GUpdatePostDataBuilder> {
  GUpdatePostData._();

  factory GUpdatePostData([void Function(GUpdatePostDataBuilder b) updates]) =
      _$GUpdatePostData;

  static void _initializeBuilder(GUpdatePostDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUpdatePostData_updatePost? get updatePost;
  static Serializer<GUpdatePostData> get serializer =>
      _$gUpdatePostDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdatePostData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdatePostData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdatePostData.serializer,
        json,
      );
}

abstract class GUpdatePostData_updatePost
    implements
        Built<GUpdatePostData_updatePost, GUpdatePostData_updatePostBuilder> {
  GUpdatePostData_updatePost._();

  factory GUpdatePostData_updatePost(
          [void Function(GUpdatePostData_updatePostBuilder b) updates]) =
      _$GUpdatePostData_updatePost;

  static void _initializeBuilder(GUpdatePostData_updatePostBuilder b) =>
      b..G__typename = 'Post';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get body;
  static Serializer<GUpdatePostData_updatePost> get serializer =>
      _$gUpdatePostDataUpdatePostSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdatePostData_updatePost.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdatePostData_updatePost? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdatePostData_updatePost.serializer,
        json,
      );
}
