// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_post.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDeletePostVars> _$gDeletePostVarsSerializer =
    new _$GDeletePostVarsSerializer();

class _$GDeletePostVarsSerializer
    implements StructuredSerializer<GDeletePostVars> {
  @override
  final Iterable<Type> types = const [GDeletePostVars, _$GDeletePostVars];
  @override
  final String wireName = 'GDeletePostVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GDeletePostVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GDeletePostVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeletePostVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeletePostVars extends GDeletePostVars {
  @override
  final String id;

  factory _$GDeletePostVars([void Function(GDeletePostVarsBuilder)? updates]) =>
      (new GDeletePostVarsBuilder()..update(updates))._build();

  _$GDeletePostVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GDeletePostVars', 'id');
  }

  @override
  GDeletePostVars rebuild(void Function(GDeletePostVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeletePostVarsBuilder toBuilder() =>
      new GDeletePostVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeletePostVars && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GDeletePostVars')..add('id', id))
        .toString();
  }
}

class GDeletePostVarsBuilder
    implements Builder<GDeletePostVars, GDeletePostVarsBuilder> {
  _$GDeletePostVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GDeletePostVarsBuilder();

  GDeletePostVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeletePostVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeletePostVars;
  }

  @override
  void update(void Function(GDeletePostVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GDeletePostVars build() => _build();

  _$GDeletePostVars _build() {
    final _$result = _$v ??
        new _$GDeletePostVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GDeletePostVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
