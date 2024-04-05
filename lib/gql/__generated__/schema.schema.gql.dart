// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_caching/gql/__generated__/serializers.gql.dart' as _i1;

part 'schema.schema.gql.g.dart';

abstract class GAddressInput
    implements Built<GAddressInput, GAddressInputBuilder> {
  GAddressInput._();

  factory GAddressInput([void Function(GAddressInputBuilder b) updates]) =
      _$GAddressInput;

  String? get street;
  String? get suite;
  String? get city;
  String? get zipcode;
  GGeoInput? get geo;
  static Serializer<GAddressInput> get serializer => _$gAddressInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GAddressInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GAddressInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GAddressInput.serializer,
        json,
      );
}

abstract class GCompanyInput
    implements Built<GCompanyInput, GCompanyInputBuilder> {
  GCompanyInput._();

  factory GCompanyInput([void Function(GCompanyInputBuilder b) updates]) =
      _$GCompanyInput;

  String? get name;
  String? get catchPhrase;
  String? get bs;
  static Serializer<GCompanyInput> get serializer => _$gCompanyInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCompanyInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCompanyInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCompanyInput.serializer,
        json,
      );
}

abstract class GCreateAlbumInput
    implements Built<GCreateAlbumInput, GCreateAlbumInputBuilder> {
  GCreateAlbumInput._();

  factory GCreateAlbumInput(
          [void Function(GCreateAlbumInputBuilder b) updates]) =
      _$GCreateAlbumInput;

  String get title;
  String get userId;
  static Serializer<GCreateAlbumInput> get serializer =>
      _$gCreateAlbumInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateAlbumInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateAlbumInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateAlbumInput.serializer,
        json,
      );
}

abstract class GCreateCommentInput
    implements Built<GCreateCommentInput, GCreateCommentInputBuilder> {
  GCreateCommentInput._();

  factory GCreateCommentInput(
          [void Function(GCreateCommentInputBuilder b) updates]) =
      _$GCreateCommentInput;

  String get name;
  String get email;
  String get body;
  static Serializer<GCreateCommentInput> get serializer =>
      _$gCreateCommentInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateCommentInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateCommentInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateCommentInput.serializer,
        json,
      );
}

abstract class GCreatePhotoInput
    implements Built<GCreatePhotoInput, GCreatePhotoInputBuilder> {
  GCreatePhotoInput._();

  factory GCreatePhotoInput(
          [void Function(GCreatePhotoInputBuilder b) updates]) =
      _$GCreatePhotoInput;

  String get title;
  String get url;
  String get thumbnailUrl;
  static Serializer<GCreatePhotoInput> get serializer =>
      _$gCreatePhotoInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreatePhotoInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreatePhotoInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreatePhotoInput.serializer,
        json,
      );
}

abstract class GCreatePostInput
    implements Built<GCreatePostInput, GCreatePostInputBuilder> {
  GCreatePostInput._();

  factory GCreatePostInput([void Function(GCreatePostInputBuilder b) updates]) =
      _$GCreatePostInput;

  String get title;
  String get body;
  static Serializer<GCreatePostInput> get serializer =>
      _$gCreatePostInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreatePostInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreatePostInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreatePostInput.serializer,
        json,
      );
}

abstract class GCreateTodoInput
    implements Built<GCreateTodoInput, GCreateTodoInputBuilder> {
  GCreateTodoInput._();

  factory GCreateTodoInput([void Function(GCreateTodoInputBuilder b) updates]) =
      _$GCreateTodoInput;

  String get title;
  bool get completed;
  static Serializer<GCreateTodoInput> get serializer =>
      _$gCreateTodoInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateTodoInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateTodoInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateTodoInput.serializer,
        json,
      );
}

abstract class GCreateUserInput
    implements Built<GCreateUserInput, GCreateUserInputBuilder> {
  GCreateUserInput._();

  factory GCreateUserInput([void Function(GCreateUserInputBuilder b) updates]) =
      _$GCreateUserInput;

  String get name;
  String get username;
  String get email;
  GAddressInput? get address;
  String? get phone;
  String? get website;
  GCompanyInput? get company;
  static Serializer<GCreateUserInput> get serializer =>
      _$gCreateUserInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GCreateUserInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GCreateUserInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GCreateUserInput.serializer,
        json,
      );
}

abstract class GGeoInput implements Built<GGeoInput, GGeoInputBuilder> {
  GGeoInput._();

  factory GGeoInput([void Function(GGeoInputBuilder b) updates]) = _$GGeoInput;

  double? get lat;
  double? get lng;
  static Serializer<GGeoInput> get serializer => _$gGeoInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GGeoInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GGeoInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GGeoInput.serializer,
        json,
      );
}

class GOperatorKindEnum extends EnumClass {
  const GOperatorKindEnum._(String name) : super(name);

  static const GOperatorKindEnum GTE = _$gOperatorKindEnumGTE;

  static const GOperatorKindEnum LTE = _$gOperatorKindEnumLTE;

  static const GOperatorKindEnum NE = _$gOperatorKindEnumNE;

  static const GOperatorKindEnum LIKE = _$gOperatorKindEnumLIKE;

  static Serializer<GOperatorKindEnum> get serializer =>
      _$gOperatorKindEnumSerializer;

  static BuiltSet<GOperatorKindEnum> get values => _$gOperatorKindEnumValues;

  static GOperatorKindEnum valueOf(String name) =>
      _$gOperatorKindEnumValueOf(name);
}

abstract class GOperatorOptions
    implements Built<GOperatorOptions, GOperatorOptionsBuilder> {
  GOperatorOptions._();

  factory GOperatorOptions([void Function(GOperatorOptionsBuilder b) updates]) =
      _$GOperatorOptions;

  GOperatorKindEnum? get kind;
  String? get field;
  String? get value;
  static Serializer<GOperatorOptions> get serializer =>
      _$gOperatorOptionsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GOperatorOptions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GOperatorOptions? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GOperatorOptions.serializer,
        json,
      );
}

abstract class GPageQueryOptions
    implements Built<GPageQueryOptions, GPageQueryOptionsBuilder> {
  GPageQueryOptions._();

  factory GPageQueryOptions(
          [void Function(GPageQueryOptionsBuilder b) updates]) =
      _$GPageQueryOptions;

  GPaginateOptions? get paginate;
  GSliceOptions? get slice;
  BuiltList<GSortOptions?>? get sort;
  BuiltList<GOperatorOptions?>? get operators;
  GSearchOptions? get search;
  static Serializer<GPageQueryOptions> get serializer =>
      _$gPageQueryOptionsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPageQueryOptions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPageQueryOptions? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPageQueryOptions.serializer,
        json,
      );
}

abstract class GPaginateOptions
    implements Built<GPaginateOptions, GPaginateOptionsBuilder> {
  GPaginateOptions._();

  factory GPaginateOptions([void Function(GPaginateOptionsBuilder b) updates]) =
      _$GPaginateOptions;

  int? get page;
  int? get limit;
  static Serializer<GPaginateOptions> get serializer =>
      _$gPaginateOptionsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPaginateOptions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPaginateOptions? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPaginateOptions.serializer,
        json,
      );
}

abstract class GSearchOptions
    implements Built<GSearchOptions, GSearchOptionsBuilder> {
  GSearchOptions._();

  factory GSearchOptions([void Function(GSearchOptionsBuilder b) updates]) =
      _$GSearchOptions;

  String? get q;
  static Serializer<GSearchOptions> get serializer =>
      _$gSearchOptionsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSearchOptions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSearchOptions? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSearchOptions.serializer,
        json,
      );
}

abstract class GSliceOptions
    implements Built<GSliceOptions, GSliceOptionsBuilder> {
  GSliceOptions._();

  factory GSliceOptions([void Function(GSliceOptionsBuilder b) updates]) =
      _$GSliceOptions;

  int? get start;
  int? get end;
  int? get limit;
  static Serializer<GSliceOptions> get serializer => _$gSliceOptionsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSliceOptions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSliceOptions? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSliceOptions.serializer,
        json,
      );
}

abstract class GSortOptions
    implements Built<GSortOptions, GSortOptionsBuilder> {
  GSortOptions._();

  factory GSortOptions([void Function(GSortOptionsBuilder b) updates]) =
      _$GSortOptions;

  String? get field;
  GSortOrderEnum? get order;
  static Serializer<GSortOptions> get serializer => _$gSortOptionsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GSortOptions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GSortOptions? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GSortOptions.serializer,
        json,
      );
}

class GSortOrderEnum extends EnumClass {
  const GSortOrderEnum._(String name) : super(name);

  static const GSortOrderEnum ASC = _$gSortOrderEnumASC;

  static const GSortOrderEnum DESC = _$gSortOrderEnumDESC;

  static Serializer<GSortOrderEnum> get serializer =>
      _$gSortOrderEnumSerializer;

  static BuiltSet<GSortOrderEnum> get values => _$gSortOrderEnumValues;

  static GSortOrderEnum valueOf(String name) => _$gSortOrderEnumValueOf(name);
}

abstract class GUpdateAlbumInput
    implements Built<GUpdateAlbumInput, GUpdateAlbumInputBuilder> {
  GUpdateAlbumInput._();

  factory GUpdateAlbumInput(
          [void Function(GUpdateAlbumInputBuilder b) updates]) =
      _$GUpdateAlbumInput;

  String? get title;
  String? get userId;
  static Serializer<GUpdateAlbumInput> get serializer =>
      _$gUpdateAlbumInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateAlbumInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateAlbumInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateAlbumInput.serializer,
        json,
      );
}

abstract class GUpdateCommentInput
    implements Built<GUpdateCommentInput, GUpdateCommentInputBuilder> {
  GUpdateCommentInput._();

  factory GUpdateCommentInput(
          [void Function(GUpdateCommentInputBuilder b) updates]) =
      _$GUpdateCommentInput;

  String? get name;
  String? get email;
  String? get body;
  static Serializer<GUpdateCommentInput> get serializer =>
      _$gUpdateCommentInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateCommentInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateCommentInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateCommentInput.serializer,
        json,
      );
}

abstract class GUpdatePhotoInput
    implements Built<GUpdatePhotoInput, GUpdatePhotoInputBuilder> {
  GUpdatePhotoInput._();

  factory GUpdatePhotoInput(
          [void Function(GUpdatePhotoInputBuilder b) updates]) =
      _$GUpdatePhotoInput;

  String? get title;
  String? get url;
  String? get thumbnailUrl;
  static Serializer<GUpdatePhotoInput> get serializer =>
      _$gUpdatePhotoInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdatePhotoInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdatePhotoInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdatePhotoInput.serializer,
        json,
      );
}

abstract class GUpdatePostInput
    implements Built<GUpdatePostInput, GUpdatePostInputBuilder> {
  GUpdatePostInput._();

  factory GUpdatePostInput([void Function(GUpdatePostInputBuilder b) updates]) =
      _$GUpdatePostInput;

  String? get title;
  String? get body;
  static Serializer<GUpdatePostInput> get serializer =>
      _$gUpdatePostInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdatePostInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdatePostInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdatePostInput.serializer,
        json,
      );
}

abstract class GUpdateTodoInput
    implements Built<GUpdateTodoInput, GUpdateTodoInputBuilder> {
  GUpdateTodoInput._();

  factory GUpdateTodoInput([void Function(GUpdateTodoInputBuilder b) updates]) =
      _$GUpdateTodoInput;

  String? get title;
  bool? get completed;
  static Serializer<GUpdateTodoInput> get serializer =>
      _$gUpdateTodoInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateTodoInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateTodoInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateTodoInput.serializer,
        json,
      );
}

abstract class GUpdateUserInput
    implements Built<GUpdateUserInput, GUpdateUserInputBuilder> {
  GUpdateUserInput._();

  factory GUpdateUserInput([void Function(GUpdateUserInputBuilder b) updates]) =
      _$GUpdateUserInput;

  String? get name;
  String? get username;
  String? get email;
  GAddressInput? get address;
  String? get phone;
  String? get website;
  GCompanyInput? get company;
  static Serializer<GUpdateUserInput> get serializer =>
      _$gUpdateUserInputSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GUpdateUserInput.serializer,
        this,
      ) as Map<String, dynamic>);

  static GUpdateUserInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GUpdateUserInput.serializer,
        json,
      );
}

const Map<String, Set<String>> possibleTypesMap = {};
