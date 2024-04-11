// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_caching/gql/__generated__/serializers.gql.dart' as _i1;
import 'package:graphql_caching/gql/fragment/__generated__/post_fragment.data.gql.dart'
    as _i2;

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
        Built<GCreatePostData_createPost, GCreatePostData_createPostBuilder>,
        _i2.GPostFragment {
  GCreatePostData_createPost._();

  factory GCreatePostData_createPost(
          [void Function(GCreatePostData_createPostBuilder b) updates]) =
      _$GCreatePostData_createPost;

  static void _initializeBuilder(GCreatePostData_createPostBuilder b) =>
      b..G__typename = 'Post';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get body;
  @override
  GCreatePostData_createPost_user? get user;
  static Serializer<GCreatePostData_createPost> get serializer =>
      _$gCreatePostDataCreatePostSerializer;

  @override
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

abstract class GCreatePostData_createPost_user
    implements
        Built<GCreatePostData_createPost_user,
            GCreatePostData_createPost_userBuilder>,
        _i2.GPostFragment_user {
  GCreatePostData_createPost_user._();

  factory GCreatePostData_createPost_user(
          [void Function(GCreatePostData_createPost_userBuilder b) updates]) =
      _$GCreatePostData_createPost_user;

  static void _initializeBuilder(GCreatePostData_createPost_userBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get name;
  @override
  String? get email;
  static Serializer<GCreatePostData_createPost_user> get serializer =>
      _$gCreatePostDataCreatePostUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreatePostData_createPost_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreatePostData_createPost_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreatePostData_createPost_user.serializer,
        json,
      );
}
