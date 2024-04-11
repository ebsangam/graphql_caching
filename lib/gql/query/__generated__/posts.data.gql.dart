// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_caching/gql/__generated__/serializers.gql.dart' as _i1;
import 'package:graphql_caching/gql/fragment/__generated__/post_fragment.data.gql.dart'
    as _i2;

part 'posts.data.gql.g.dart';

abstract class GPostsData implements Built<GPostsData, GPostsDataBuilder> {
  GPostsData._();

  factory GPostsData([void Function(GPostsDataBuilder b) updates]) =
      _$GPostsData;

  static void _initializeBuilder(GPostsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPostsData_posts? get posts;
  static Serializer<GPostsData> get serializer => _$gPostsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPostsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostsData.serializer,
        json,
      );
}

abstract class GPostsData_posts
    implements Built<GPostsData_posts, GPostsData_postsBuilder> {
  GPostsData_posts._();

  factory GPostsData_posts([void Function(GPostsData_postsBuilder b) updates]) =
      _$GPostsData_posts;

  static void _initializeBuilder(GPostsData_postsBuilder b) =>
      b..G__typename = 'PostsPage';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GPostsData_posts_data?>? get data;
  static Serializer<GPostsData_posts> get serializer =>
      _$gPostsDataPostsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostsData_posts.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPostsData_posts? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostsData_posts.serializer,
        json,
      );
}

abstract class GPostsData_posts_data
    implements
        Built<GPostsData_posts_data, GPostsData_posts_dataBuilder>,
        _i2.GPostFragment {
  GPostsData_posts_data._();

  factory GPostsData_posts_data(
          [void Function(GPostsData_posts_dataBuilder b) updates]) =
      _$GPostsData_posts_data;

  static void _initializeBuilder(GPostsData_posts_dataBuilder b) =>
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
  GPostsData_posts_data_user? get user;
  static Serializer<GPostsData_posts_data> get serializer =>
      _$gPostsDataPostsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostsData_posts_data.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPostsData_posts_data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostsData_posts_data.serializer,
        json,
      );
}

abstract class GPostsData_posts_data_user
    implements
        Built<GPostsData_posts_data_user, GPostsData_posts_data_userBuilder>,
        _i2.GPostFragment_user {
  GPostsData_posts_data_user._();

  factory GPostsData_posts_data_user(
          [void Function(GPostsData_posts_data_userBuilder b) updates]) =
      _$GPostsData_posts_data_user;

  static void _initializeBuilder(GPostsData_posts_data_userBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get name;
  @override
  String? get email;
  static Serializer<GPostsData_posts_data_user> get serializer =>
      _$gPostsDataPostsDataUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostsData_posts_data_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPostsData_posts_data_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostsData_posts_data_user.serializer,
        json,
      );
}
