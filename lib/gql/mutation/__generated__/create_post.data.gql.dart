// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_caching/gql/__generated__/serializers.gql.dart' as _i1;

part 'create_post.data.gql.g.dart';

abstract class GCreatePostData
    implements Built<GCreatePostData, GCreatePostDataBuilder> {
  GCreatePostData._();

  factory GCreatePostData([void Function(GCreatePostDataBuilder b) updates]) =
      _$GCreatePostData;

  static void _initializeBuilder(GCreatePostDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreatePostData_createPost? get createPost;
  static Serializer<GCreatePostData> get serializer =>
      _$gCreatePostDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreatePostData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreatePostData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreatePostData.serializer,
        json,
      );
}

abstract class GCreatePostData_createPost
    implements
        Built<GCreatePostData_createPost, GCreatePostData_createPostBuilder> {
  GCreatePostData_createPost._();

  factory GCreatePostData_createPost(
          [void Function(GCreatePostData_createPostBuilder b) updates]) =
      _$GCreatePostData_createPost;

  static void _initializeBuilder(GCreatePostData_createPostBuilder b) =>
      b..G__typename = 'Post';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get title;
  String? get body;
  static Serializer<GCreatePostData_createPost> get serializer =>
      _$gCreatePostDataCreatePostSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreatePostData_createPost.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreatePostData_createPost? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreatePostData_createPost.serializer,
        json,
      );
}
