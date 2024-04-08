// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_post.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUpdatePostData> _$gUpdatePostDataSerializer =
    new _$GUpdatePostDataSerializer();
Serializer<GUpdatePostData_updatePost> _$gUpdatePostDataUpdatePostSerializer =
    new _$GUpdatePostData_updatePostSerializer();

class _$GUpdatePostDataSerializer
    implements StructuredSerializer<GUpdatePostData> {
  @override
  final Iterable<Type> types = const [GUpdatePostData, _$GUpdatePostData];
  @override
  final String wireName = 'GUpdatePostData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUpdatePostData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.updatePost;
    if (value != null) {
      result
        ..add('updatePost')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GUpdatePostData_updatePost)));
    }
    return result;
  }

  @override
  GUpdatePostData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdatePostDataBuilder();

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
        case 'updatePost':
          result.updatePost.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUpdatePostData_updatePost))!
              as GUpdatePostData_updatePost);
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdatePostData_updatePostSerializer
    implements StructuredSerializer<GUpdatePostData_updatePost> {
  @override
  final Iterable<Type> types = const [
    GUpdatePostData_updatePost,
    _$GUpdatePostData_updatePost
  ];
  @override
  final String wireName = 'GUpdatePostData_updatePost';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUpdatePostData_updatePost object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.body;
    if (value != null) {
      result
        ..add('body')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GUpdatePostData_updatePost deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUpdatePostData_updatePostBuilder();

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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GUpdatePostData extends GUpdatePostData {
  @override
  final String G__typename;
  @override
  final GUpdatePostData_updatePost? updatePost;

  factory _$GUpdatePostData([void Function(GUpdatePostDataBuilder)? updates]) =>
      (new GUpdatePostDataBuilder()..update(updates))._build();

  _$GUpdatePostData._({required this.G__typename, this.updatePost})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdatePostData', 'G__typename');
  }

  @override
  GUpdatePostData rebuild(void Function(GUpdatePostDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdatePostDataBuilder toBuilder() =>
      new GUpdatePostDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdatePostData &&
        G__typename == other.G__typename &&
        updatePost == other.updatePost;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, updatePost.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdatePostData')
          ..add('G__typename', G__typename)
          ..add('updatePost', updatePost))
        .toString();
  }
}

class GUpdatePostDataBuilder
    implements Builder<GUpdatePostData, GUpdatePostDataBuilder> {
  _$GUpdatePostData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUpdatePostData_updatePostBuilder? _updatePost;
  GUpdatePostData_updatePostBuilder get updatePost =>
      _$this._updatePost ??= new GUpdatePostData_updatePostBuilder();
  set updatePost(GUpdatePostData_updatePostBuilder? updatePost) =>
      _$this._updatePost = updatePost;

  GUpdatePostDataBuilder() {
    GUpdatePostData._initializeBuilder(this);
  }

  GUpdatePostDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updatePost = $v.updatePost?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdatePostData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdatePostData;
  }

  @override
  void update(void Function(GUpdatePostDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdatePostData build() => _build();

  _$GUpdatePostData _build() {
    _$GUpdatePostData _$result;
    try {
      _$result = _$v ??
          new _$GUpdatePostData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GUpdatePostData', 'G__typename'),
              updatePost: _updatePost?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updatePost';
        _updatePost?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GUpdatePostData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUpdatePostData_updatePost extends GUpdatePostData_updatePost {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? body;

  factory _$GUpdatePostData_updatePost(
          [void Function(GUpdatePostData_updatePostBuilder)? updates]) =>
      (new GUpdatePostData_updatePostBuilder()..update(updates))._build();

  _$GUpdatePostData_updatePost._(
      {required this.G__typename, this.id, this.body})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GUpdatePostData_updatePost', 'G__typename');
  }

  @override
  GUpdatePostData_updatePost rebuild(
          void Function(GUpdatePostData_updatePostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUpdatePostData_updatePostBuilder toBuilder() =>
      new GUpdatePostData_updatePostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUpdatePostData_updatePost &&
        G__typename == other.G__typename &&
        id == other.id &&
        body == other.body;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GUpdatePostData_updatePost')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('body', body))
        .toString();
  }
}

class GUpdatePostData_updatePostBuilder
    implements
        Builder<GUpdatePostData_updatePost, GUpdatePostData_updatePostBuilder> {
  _$GUpdatePostData_updatePost? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  GUpdatePostData_updatePostBuilder() {
    GUpdatePostData_updatePost._initializeBuilder(this);
  }

  GUpdatePostData_updatePostBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _body = $v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUpdatePostData_updatePost other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUpdatePostData_updatePost;
  }

  @override
  void update(void Function(GUpdatePostData_updatePostBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GUpdatePostData_updatePost build() => _build();

  _$GUpdatePostData_updatePost _build() {
    final _$result = _$v ??
        new _$GUpdatePostData_updatePost._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GUpdatePostData_updatePost', 'G__typename'),
            id: id,
            body: body);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
