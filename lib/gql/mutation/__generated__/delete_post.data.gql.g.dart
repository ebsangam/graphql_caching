// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_post.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDeletePostData> _$gDeletePostDataSerializer =
    new _$GDeletePostDataSerializer();

class _$GDeletePostDataSerializer
    implements StructuredSerializer<GDeletePostData> {
  @override
  final Iterable<Type> types = const [GDeletePostData, _$GDeletePostData];
  @override
  final String wireName = 'GDeletePostData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GDeletePostData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.deletePost;
    if (value != null) {
      result
        ..add('deletePost')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GDeletePostData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeletePostDataBuilder();

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
        case 'deletePost':
          result.deletePost = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeletePostData extends GDeletePostData {
  @override
  final String G__typename;
  @override
  final bool? deletePost;

  factory _$GDeletePostData([void Function(GDeletePostDataBuilder)? updates]) =>
      (new GDeletePostDataBuilder()..update(updates))._build();

  _$GDeletePostData._({required this.G__typename, this.deletePost})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GDeletePostData', 'G__typename');
  }

  @override
  GDeletePostData rebuild(void Function(GDeletePostDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeletePostDataBuilder toBuilder() =>
      new GDeletePostDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeletePostData &&
        G__typename == other.G__typename &&
        deletePost == other.deletePost;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, deletePost.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeletePostData')
          ..add('G__typename', G__typename)
          ..add('deletePost', deletePost))
        .toString();
  }
}

class GDeletePostDataBuilder
    implements Builder<GDeletePostData, GDeletePostDataBuilder> {
  _$GDeletePostData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _deletePost;
  bool? get deletePost => _$this._deletePost;
  set deletePost(bool? deletePost) => _$this._deletePost = deletePost;

  GDeletePostDataBuilder() {
    GDeletePostData._initializeBuilder(this);
  }

  GDeletePostDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deletePost = $v.deletePost;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeletePostData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeletePostData;
  }

  @override
  void update(void Function(GDeletePostDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeletePostData build() => _build();

  _$GDeletePostData _build() {
    final _$result = _$v ??
        new _$GDeletePostData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GDeletePostData', 'G__typename'),
            deletePost: deletePost);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
