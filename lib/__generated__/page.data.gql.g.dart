// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page.data.gql.dart';

*************************************************************************
// BuiltValueGenerator
*************************************************************************

Serializer<GPageData> _$gPageDataSerializer = new _$GPageDataSerializer();
Serializer<GPageData_Page> _$gPageDataPageSerializer =
    new _$GPageData_PageSerializer();
Serializer<GPageData_Page_media> _$gPageDataPageMediaSerializer =
    new _$GPageData_Page_mediaSerializer();
Serializer<GPageData_Page_media_title> _$gPageDataPageMediaTitleSerializer =
    new _$GPageData_Page_media_titleSerializer();
Serializer<GPageData_Page_media_coverImage>
    _$gPageDataPageMediaCoverImageSerializer =
    new _$GPageData_Page_media_coverImageSerializer();
Serializer<GPageData_Page_pageInfo> _$gPageDataPagePageInfoSerializer =
    new _$GPageData_Page_pageInfoSerializer();

class _$GPageDataSerializer implements StructuredSerializer<GPageData> {
  @override
  final Iterable<Type> types = const [GPageData, _$GPageData];
  @override
  final String wireName = 'GPageData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPageData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.Page;
    if (value != null) {
      result
        ..add('Page')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GPageData_Page)));
    }
    return result;
  }

  @override
  GPageData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPageDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'Page':
          result.Page.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GPageData_Page))!
              as GPageData_Page);
          break;
      }
    }

    return result.build();
  }
}

class _$GPageData_PageSerializer
    implements StructuredSerializer<GPageData_Page> {
  @override
  final Iterable<Type> types = const [GPageData_Page, _$GPageData_Page];
  @override
  final String wireName = 'GPageData_Page';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPageData_Page object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.media;
    if (value != null) {
      result
        ..add('media')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(GPageData_Page_media)])));
    }
    value = object.pageInfo;
    if (value != null) {
      result
        ..add('pageInfo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GPageData_Page_pageInfo)));
    }
    return result;
  }

  @override
  GPageData_Page deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPageData_PageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'media':
          result.media.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GPageData_Page_media)
              ]))! as BuiltList<Object?>);
          break;
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GPageData_Page_pageInfo))!
              as GPageData_Page_pageInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$GPageData_Page_mediaSerializer
    implements StructuredSerializer<GPageData_Page_media> {
  @override
  final Iterable<Type> types = const [
    GPageData_Page_media,
    _$GPageData_Page_media
  ];
  @override
  final String wireName = 'GPageData_Page_media';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPageData_Page_media object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GPageData_Page_media_title)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('coverImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GPageData_Page_media_coverImage)));
    }
    value = object.bannerImage;
    if (value != null) {
      result
        ..add('bannerImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.format;
    if (value != null) {
      result
        ..add('format')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GMediaFormat)));
    }
    return result;
  }

  @override
  GPageData_Page_media deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPageData_Page_mediaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'title':
          result.title.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GPageData_Page_media_title))!
              as GPageData_Page_media_title);
          break;
        case 'coverImage':
          result.coverImage.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GPageData_Page_media_coverImage))!
              as GPageData_Page_media_coverImage);
          break;
        case 'bannerImage':
          result.bannerImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'format':
          result.format = serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GMediaFormat))
              as _i2.GMediaFormat?;
          break;
      }
    }

    return result.build();
  }
}

class _$GPageData_Page_media_titleSerializer
    implements StructuredSerializer<GPageData_Page_media_title> {
  @override
  final Iterable<Type> types = const [
    GPageData_Page_media_title,
    _$GPageData_Page_media_title
  ];
  @override
  final String wireName = 'GPageData_Page_media_title';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPageData_Page_media_title object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.english;
    if (value != null) {
      result
        ..add('english')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GPageData_Page_media_title deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPageData_Page_media_titleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'english':
          result.english = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GPageData_Page_media_coverImageSerializer
    implements StructuredSerializer<GPageData_Page_media_coverImage> {
  @override
  final Iterable<Type> types = const [
    GPageData_Page_media_coverImage,
    _$GPageData_Page_media_coverImage
  ];
  @override
  final String wireName = 'GPageData_Page_media_coverImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPageData_Page_media_coverImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.extraLarge;
    if (value != null) {
      result
        ..add('extraLarge')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.large;
    if (value != null) {
      result
        ..add('large')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.medium;
    if (value != null) {
      result
        ..add('medium')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.color;
    if (value != null) {
      result
        ..add('color')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GPageData_Page_media_coverImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPageData_Page_media_coverImageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'extraLarge':
          result.extraLarge = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'medium':
          result.medium = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GPageData_Page_pageInfoSerializer
    implements StructuredSerializer<GPageData_Page_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GPageData_Page_pageInfo,
    _$GPageData_Page_pageInfo
  ];
  @override
  final String wireName = 'GPageData_Page_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPageData_Page_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.perPage;
    if (value != null) {
      result
        ..add('perPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.currentPage;
    if (value != null) {
      result
        ..add('currentPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.lastPage;
    if (value != null) {
      result
        ..add('lastPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hasNextPage;
    if (value != null) {
      result
        ..add('hasNextPage')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GPageData_Page_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPageData_Page_pageInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'perPage':
          result.perPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'currentPage':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'lastPage':
          result.lastPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hasNextPage':
          result.hasNextPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GPageData extends GPageData {
  @override
  final String G__typename;
  @override
  final GPageData_Page? Page;

  factory _$GPageData([void Function(GPageDataBuilder)? updates]) =>
      (new GPageDataBuilder()..update(updates))._build();

  _$GPageData._({required this.G__typename, this.Page}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPageData', 'G__typename');
  }

  @override
  GPageData rebuild(void Function(GPageDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPageDataBuilder toBuilder() => new GPageDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPageData &&
        G__typename == other.G__typename &&
        Page == other.Page;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, Page.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPageData')
          ..add('G__typename', G__typename)
          ..add('Page', Page))
        .toString();
  }
}

class GPageDataBuilder implements Builder<GPageData, GPageDataBuilder> {
  _$GPageData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPageData_PageBuilder? _Page;
  GPageData_PageBuilder get Page =>
      _$this._Page ??= new GPageData_PageBuilder();
  set Page(GPageData_PageBuilder? Page) => _$this._Page = Page;

  GPageDataBuilder() {
    GPageData._initializeBuilder(this);
  }

  GPageDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _Page = $v.Page?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPageData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPageData;
  }

  @override
  void update(void Function(GPageDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPageData build() => _build();

  _$GPageData _build() {
    _$GPageData _$result;
    try {
      _$result = _$v ??
          new _$GPageData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPageData', 'G__typename'),
              Page: _Page?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'Page';
        _Page?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPageData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPageData_Page extends GPageData_Page {
  @override
  final String G__typename;
  @override
  final BuiltList<GPageData_Page_media?>? media;
  @override
  final GPageData_Page_pageInfo? pageInfo;

  factory _$GPageData_Page([void Function(GPageData_PageBuilder)? updates]) =>
      (new GPageData_PageBuilder()..update(updates))._build();

  _$GPageData_Page._({required this.G__typename, this.media, this.pageInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPageData_Page', 'G__typename');
  }

  @override
  GPageData_Page rebuild(void Function(GPageData_PageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPageData_PageBuilder toBuilder() =>
      new GPageData_PageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPageData_Page &&
        G__typename == other.G__typename &&
        media == other.media &&
        pageInfo == other.pageInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, media.hashCode);
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPageData_Page')
          ..add('G__typename', G__typename)
          ..add('media', media)
          ..add('pageInfo', pageInfo))
        .toString();
  }
}

class GPageData_PageBuilder
    implements Builder<GPageData_Page, GPageData_PageBuilder> {
  _$GPageData_Page? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GPageData_Page_media?>? _media;
  ListBuilder<GPageData_Page_media?> get media =>
      _$this._media ??= new ListBuilder<GPageData_Page_media?>();
  set media(ListBuilder<GPageData_Page_media?>? media) => _$this._media = media;

  GPageData_Page_pageInfoBuilder? _pageInfo;
  GPageData_Page_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GPageData_Page_pageInfoBuilder();
  set pageInfo(GPageData_Page_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  GPageData_PageBuilder() {
    GPageData_Page._initializeBuilder(this);
  }

  GPageData_PageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _media = $v.media?.toBuilder();
      _pageInfo = $v.pageInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPageData_Page other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPageData_Page;
  }

  @override
  void update(void Function(GPageData_PageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPageData_Page build() => _build();

  _$GPageData_Page _build() {
    _$GPageData_Page _$result;
    try {
      _$result = _$v ??
          new _$GPageData_Page._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPageData_Page', 'G__typename'),
              media: _media?.build(),
              pageInfo: _pageInfo?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'media';
        _media?.build();
        _$failedField = 'pageInfo';
        _pageInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPageData_Page', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPageData_Page_media extends GPageData_Page_media {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final GPageData_Page_media_title? title;
  @override
  final GPageData_Page_media_coverImage? coverImage;
  @override
  final String? bannerImage;
  @override
  final String? description;
  @override
  final _i2.GMediaFormat? format;

  factory _$GPageData_Page_media(
          [void Function(GPageData_Page_mediaBuilder)? updates]) =>
      (new GPageData_Page_mediaBuilder()..update(updates))._build();

  _$GPageData_Page_media._(
      {required this.G__typename,
      required this.id,
      this.title,
      this.coverImage,
      this.bannerImage,
      this.description,
      this.format})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPageData_Page_media', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, r'GPageData_Page_media', 'id');
  }

  @override
  GPageData_Page_media rebuild(
          void Function(GPageData_Page_mediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPageData_Page_mediaBuilder toBuilder() =>
      new GPageData_Page_mediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPageData_Page_media &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        coverImage == other.coverImage &&
        bannerImage == other.bannerImage &&
        description == other.description &&
        format == other.format;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jc(_$hash, bannerImage.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPageData_Page_media')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('coverImage', coverImage)
          ..add('bannerImage', bannerImage)
          ..add('description', description)
          ..add('format', format))
        .toString();
  }
}

class GPageData_Page_mediaBuilder
    implements Builder<GPageData_Page_media, GPageData_Page_mediaBuilder> {
  _$GPageData_Page_media? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GPageData_Page_media_titleBuilder? _title;
  GPageData_Page_media_titleBuilder get title =>
      _$this._title ??= new GPageData_Page_media_titleBuilder();
  set title(GPageData_Page_media_titleBuilder? title) => _$this._title = title;

  GPageData_Page_media_coverImageBuilder? _coverImage;
  GPageData_Page_media_coverImageBuilder get coverImage =>
      _$this._coverImage ??= new GPageData_Page_media_coverImageBuilder();
  set coverImage(GPageData_Page_media_coverImageBuilder? coverImage) =>
      _$this._coverImage = coverImage;

  String? _bannerImage;
  String? get bannerImage => _$this._bannerImage;
  set bannerImage(String? bannerImage) => _$this._bannerImage = bannerImage;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i2.GMediaFormat? _format;
  _i2.GMediaFormat? get format => _$this._format;
  set format(_i2.GMediaFormat? format) => _$this._format = format;

  GPageData_Page_mediaBuilder() {
    GPageData_Page_media._initializeBuilder(this);
  }

  GPageData_Page_mediaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title?.toBuilder();
      _coverImage = $v.coverImage?.toBuilder();
      _bannerImage = $v.bannerImage;
      _description = $v.description;
      _format = $v.format;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPageData_Page_media other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPageData_Page_media;
  }

  @override
  void update(void Function(GPageData_Page_mediaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPageData_Page_media build() => _build();

  _$GPageData_Page_media _build() {
    _$GPageData_Page_media _$result;
    try {
      _$result = _$v ??
          new _$GPageData_Page_media._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPageData_Page_media', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'GPageData_Page_media', 'id'),
              title: _title?.build(),
              coverImage: _coverImage?.build(),
              bannerImage: bannerImage,
              description: description,
              format: format);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'title';
        _title?.build();
        _$failedField = 'coverImage';
        _coverImage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPageData_Page_media', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPageData_Page_media_title extends GPageData_Page_media_title {
  @override
  final String G__typename;
  @override
  final String? english;

  factory _$GPageData_Page_media_title(
          [void Function(GPageData_Page_media_titleBuilder)? updates]) =>
      (new GPageData_Page_media_titleBuilder()..update(updates))._build();

  _$GPageData_Page_media_title._({required this.G__typename, this.english})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPageData_Page_media_title', 'G__typename');
  }

  @override
  GPageData_Page_media_title rebuild(
          void Function(GPageData_Page_media_titleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPageData_Page_media_titleBuilder toBuilder() =>
      new GPageData_Page_media_titleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPageData_Page_media_title &&
        G__typename == other.G__typename &&
        english == other.english;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, english.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPageData_Page_media_title')
          ..add('G__typename', G__typename)
          ..add('english', english))
        .toString();
  }
}

class GPageData_Page_media_titleBuilder
    implements
        Builder<GPageData_Page_media_title, GPageData_Page_media_titleBuilder> {
  _$GPageData_Page_media_title? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _english;
  String? get english => _$this._english;
  set english(String? english) => _$this._english = english;

  GPageData_Page_media_titleBuilder() {
    GPageData_Page_media_title._initializeBuilder(this);
  }

  GPageData_Page_media_titleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _english = $v.english;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPageData_Page_media_title other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPageData_Page_media_title;
  }

  @override
  void update(void Function(GPageData_Page_media_titleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPageData_Page_media_title build() => _build();

  _$GPageData_Page_media_title _build() {
    final _$result = _$v ??
        new _$GPageData_Page_media_title._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GPageData_Page_media_title', 'G__typename'),
            english: english);
    replace(_$result);
    return _$result;
  }
}

class _$GPageData_Page_media_coverImage
    extends GPageData_Page_media_coverImage {
  @override
  final String G__typename;
  @override
  final String? extraLarge;
  @override
  final String? large;
  @override
  final String? medium;
  @override
  final String? color;

  factory _$GPageData_Page_media_coverImage(
          [void Function(GPageData_Page_media_coverImageBuilder)? updates]) =>
      (new GPageData_Page_media_coverImageBuilder()..update(updates))._build();

  _$GPageData_Page_media_coverImage._(
      {required this.G__typename,
      this.extraLarge,
      this.large,
      this.medium,
      this.color})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPageData_Page_media_coverImage', 'G__typename');
  }

  @override
  GPageData_Page_media_coverImage rebuild(
          void Function(GPageData_Page_media_coverImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPageData_Page_media_coverImageBuilder toBuilder() =>
      new GPageData_Page_media_coverImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPageData_Page_media_coverImage &&
        G__typename == other.G__typename &&
        extraLarge == other.extraLarge &&
        large == other.large &&
        medium == other.medium &&
        color == other.color;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, extraLarge.hashCode);
    _$hash = $jc(_$hash, large.hashCode);
    _$hash = $jc(_$hash, medium.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPageData_Page_media_coverImage')
          ..add('G__typename', G__typename)
          ..add('extraLarge', extraLarge)
          ..add('large', large)
          ..add('medium', medium)
          ..add('color', color))
        .toString();
  }
}

class GPageData_Page_media_coverImageBuilder
    implements
        Builder<GPageData_Page_media_coverImage,
            GPageData_Page_media_coverImageBuilder> {
  _$GPageData_Page_media_coverImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _extraLarge;
  String? get extraLarge => _$this._extraLarge;
  set extraLarge(String? extraLarge) => _$this._extraLarge = extraLarge;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  String? _medium;
  String? get medium => _$this._medium;
  set medium(String? medium) => _$this._medium = medium;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  GPageData_Page_media_coverImageBuilder() {
    GPageData_Page_media_coverImage._initializeBuilder(this);
  }

  GPageData_Page_media_coverImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _extraLarge = $v.extraLarge;
      _large = $v.large;
      _medium = $v.medium;
      _color = $v.color;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPageData_Page_media_coverImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPageData_Page_media_coverImage;
  }

  @override
  void update(void Function(GPageData_Page_media_coverImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPageData_Page_media_coverImage build() => _build();

  _$GPageData_Page_media_coverImage _build() {
    final _$result = _$v ??
        new _$GPageData_Page_media_coverImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GPageData_Page_media_coverImage', 'G__typename'),
            extraLarge: extraLarge,
            large: large,
            medium: medium,
            color: color);
    replace(_$result);
    return _$result;
  }
}

class _$GPageData_Page_pageInfo extends GPageData_Page_pageInfo {
  @override
  final String G__typename;
  @override
  final int? total;
  @override
  final int? perPage;
  @override
  final int? currentPage;
  @override
  final int? lastPage;
  @override
  final bool? hasNextPage;

  factory _$GPageData_Page_pageInfo(
          [void Function(GPageData_Page_pageInfoBuilder)? updates]) =>
      (new GPageData_Page_pageInfoBuilder()..update(updates))._build();

  _$GPageData_Page_pageInfo._(
      {required this.G__typename,
      this.total,
      this.perPage,
      this.currentPage,
      this.lastPage,
      this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPageData_Page_pageInfo', 'G__typename');
  }

  @override
  GPageData_Page_pageInfo rebuild(
          void Function(GPageData_Page_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPageData_Page_pageInfoBuilder toBuilder() =>
      new GPageData_Page_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPageData_Page_pageInfo &&
        G__typename == other.G__typename &&
        total == other.total &&
        perPage == other.perPage &&
        currentPage == other.currentPage &&
        lastPage == other.lastPage &&
        hasNextPage == other.hasNextPage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, perPage.hashCode);
    _$hash = $jc(_$hash, currentPage.hashCode);
    _$hash = $jc(_$hash, lastPage.hashCode);
    _$hash = $jc(_$hash, hasNextPage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPageData_Page_pageInfo')
          ..add('G__typename', G__typename)
          ..add('total', total)
          ..add('perPage', perPage)
          ..add('currentPage', currentPage)
          ..add('lastPage', lastPage)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GPageData_Page_pageInfoBuilder
    implements
        Builder<GPageData_Page_pageInfo, GPageData_Page_pageInfoBuilder> {
  _$GPageData_Page_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  int? _currentPage;
  int? get currentPage => _$this._currentPage;
  set currentPage(int? currentPage) => _$this._currentPage = currentPage;

  int? _lastPage;
  int? get lastPage => _$this._lastPage;
  set lastPage(int? lastPage) => _$this._lastPage = lastPage;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GPageData_Page_pageInfoBuilder() {
    GPageData_Page_pageInfo._initializeBuilder(this);
  }

  GPageData_Page_pageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _total = $v.total;
      _perPage = $v.perPage;
      _currentPage = $v.currentPage;
      _lastPage = $v.lastPage;
      _hasNextPage = $v.hasNextPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPageData_Page_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPageData_Page_pageInfo;
  }

  @override
  void update(void Function(GPageData_Page_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPageData_Page_pageInfo build() => _build();

  _$GPageData_Page_pageInfo _build() {
    final _$result = _$v ??
        new _$GPageData_Page_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GPageData_Page_pageInfo', 'G__typename'),
            total: total,
            perPage: perPage,
            currentPage: currentPage,
            lastPage: lastPage,
            hasNextPage: hasNextPage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
