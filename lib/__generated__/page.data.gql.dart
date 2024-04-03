// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_caching/__generated__/schema.schema.gql.dart' as _i2;
import 'package:graphql_caching/__generated__/serializers.gql.dart' as _i1;

part 'page.data.gql.g.dart';

abstract class GPageData implements Built<GPageData, GPageDataBuilder> {
  GPageData._();

  factory GPageData([void Function(GPageDataBuilder b) updates]) = _$GPageData;

  static void _initializeBuilder(GPageDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GPageData_Page? get Page;
  static Serializer<GPageData> get serializer => _$gPageDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPageData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPageData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPageData.serializer,
        json,
      );
}

abstract class GPageData_Page
    implements Built<GPageData_Page, GPageData_PageBuilder> {
  GPageData_Page._();

  factory GPageData_Page([void Function(GPageData_PageBuilder b) updates]) =
      _$GPageData_Page;

  static void _initializeBuilder(GPageData_PageBuilder b) =>
      b..G__typename = 'Page';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GPageData_Page_media?>? get media;
  GPageData_Page_pageInfo? get pageInfo;
  static Serializer<GPageData_Page> get serializer => _$gPageDataPageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPageData_Page.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPageData_Page? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPageData_Page.serializer,
        json,
      );
}

abstract class GPageData_Page_media
    implements Built<GPageData_Page_media, GPageData_Page_mediaBuilder> {
  GPageData_Page_media._();

  factory GPageData_Page_media(
          [void Function(GPageData_Page_mediaBuilder b) updates]) =
      _$GPageData_Page_media;

  static void _initializeBuilder(GPageData_Page_mediaBuilder b) =>
      b..G__typename = 'Media';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  GPageData_Page_media_title? get title;
  GPageData_Page_media_coverImage? get coverImage;
  String? get bannerImage;
  String? get description;
  _i2.GMediaFormat? get format;
  static Serializer<GPageData_Page_media> get serializer =>
      _$gPageDataPageMediaSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPageData_Page_media.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPageData_Page_media? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPageData_Page_media.serializer,
        json,
      );
}

abstract class GPageData_Page_media_title
    implements
        Built<GPageData_Page_media_title, GPageData_Page_media_titleBuilder> {
  GPageData_Page_media_title._();

  factory GPageData_Page_media_title(
          [void Function(GPageData_Page_media_titleBuilder b) updates]) =
      _$GPageData_Page_media_title;

  static void _initializeBuilder(GPageData_Page_media_titleBuilder b) =>
      b..G__typename = 'MediaTitle';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get english;
  static Serializer<GPageData_Page_media_title> get serializer =>
      _$gPageDataPageMediaTitleSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPageData_Page_media_title.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPageData_Page_media_title? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPageData_Page_media_title.serializer,
        json,
      );
}

abstract class GPageData_Page_media_coverImage
    implements
        Built<GPageData_Page_media_coverImage,
            GPageData_Page_media_coverImageBuilder> {
  GPageData_Page_media_coverImage._();

  factory GPageData_Page_media_coverImage(
          [void Function(GPageData_Page_media_coverImageBuilder b) updates]) =
      _$GPageData_Page_media_coverImage;

  static void _initializeBuilder(GPageData_Page_media_coverImageBuilder b) =>
      b..G__typename = 'MediaCoverImage';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get extraLarge;
  String? get large;
  String? get medium;
  String? get color;
  static Serializer<GPageData_Page_media_coverImage> get serializer =>
      _$gPageDataPageMediaCoverImageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPageData_Page_media_coverImage.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPageData_Page_media_coverImage? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPageData_Page_media_coverImage.serializer,
        json,
      );
}

abstract class GPageData_Page_pageInfo
    implements Built<GPageData_Page_pageInfo, GPageData_Page_pageInfoBuilder> {
  GPageData_Page_pageInfo._();

  factory GPageData_Page_pageInfo(
          [void Function(GPageData_Page_pageInfoBuilder b) updates]) =
      _$GPageData_Page_pageInfo;

  static void _initializeBuilder(GPageData_Page_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get total;
  int? get perPage;
  int? get currentPage;
  int? get lastPage;
  bool? get hasNextPage;
  static Serializer<GPageData_Page_pageInfo> get serializer =>
      _$gPageDataPagePageInfoSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GPageData_Page_pageInfo.serializer,
        this,
      ) as Map<String, dynamic>);

  static GPageData_Page_pageInfo? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GPageData_Page_pageInfo.serializer,
        json,
      );
}
