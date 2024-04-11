// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_caching/gql/__generated__/serializers.gql.dart' as _i1;

part 'post_fragment.data.gql.g.dart';

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
