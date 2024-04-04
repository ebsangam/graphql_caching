// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_caching/__generated__/serializers.gql.dart' as _i1;

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
        GPostFragment {
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
        GPostFragment_user {
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

abstract class GPostFragment {
  String get G__typename;
  String? get id;
  String? get title;
  String? get body;
  GPostFragment_user? get user;
  Map<String, dynamic> toJson();
}

abstract class GPostFragment_user {
  String get G__typename;
  String? get name;
  String? get email;
  Map<String, dynamic> toJson();
}

abstract class GPostFragmentData
    implements
        Built<GPostFragmentData, GPostFragmentDataBuilder>,
        GPostFragment {
  GPostFragmentData._();

  factory GPostFragmentData(
          [void Function(GPostFragmentDataBuilder b) updates]) =
      _$GPostFragmentData;

  static void _initializeBuilder(GPostFragmentDataBuilder b) =>
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
  GPostFragmentData_user? get user;
  static Serializer<GPostFragmentData> get serializer =>
      _$gPostFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPostFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostFragmentData.serializer,
        json,
      );
}

abstract class GPostFragmentData_user
    implements
        Built<GPostFragmentData_user, GPostFragmentData_userBuilder>,
        GPostFragment_user {
  GPostFragmentData_user._();

  factory GPostFragmentData_user(
          [void Function(GPostFragmentData_userBuilder b) updates]) =
      _$GPostFragmentData_user;

  static void _initializeBuilder(GPostFragmentData_userBuilder b) =>
      b..G__typename = 'User';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get name;
  @override
  String? get email;
  static Serializer<GPostFragmentData_user> get serializer =>
      _$gPostFragmentDataUserSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPostFragmentData_user.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPostFragmentData_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPostFragmentData_user.serializer,
        json,
      );
}
