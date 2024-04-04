// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPostsVars> _$gPostsVarsSerializer = new _$GPostsVarsSerializer();
Serializer<GPostFragmentVars> _$gPostFragmentVarsSerializer =
    new _$GPostFragmentVarsSerializer();

class _$GPostsVarsSerializer implements StructuredSerializer<GPostsVars> {
  @override
  final Iterable<Type> types = const [GPostsVars, _$GPostsVars];
  @override
  final String wireName = 'GPostsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPostsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.options;
    if (value != null) {
      result
        ..add('options')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GPageQueryOptions)));
    }
    return result;
  }

  @override
  GPostsVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'options':
          result.options.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GPageQueryOptions))!
              as _i1.GPageQueryOptions);
          break;
      }
    }

    return result.build();
  }
}

class _$GPostFragmentVarsSerializer
    implements StructuredSerializer<GPostFragmentVars> {
  @override
  final Iterable<Type> types = const [GPostFragmentVars, _$GPostFragmentVars];
  @override
  final String wireName = 'GPostFragmentVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPostFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GPostFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GPostFragmentVarsBuilder().build();
  }
}

class _$GPostsVars extends GPostsVars {
  @override
  final _i1.GPageQueryOptions? options;

  factory _$GPostsVars([void Function(GPostsVarsBuilder)? updates]) =>
      (new GPostsVarsBuilder()..update(updates))._build();

  _$GPostsVars._({this.options}) : super._();

  @override
  GPostsVars rebuild(void Function(GPostsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostsVarsBuilder toBuilder() => new GPostsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostsVars && options == other.options;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPostsVars')..add('options', options))
        .toString();
  }
}

class GPostsVarsBuilder implements Builder<GPostsVars, GPostsVarsBuilder> {
  _$GPostsVars? _$v;

  _i1.GPageQueryOptionsBuilder? _options;
  _i1.GPageQueryOptionsBuilder get options =>
      _$this._options ??= new _i1.GPageQueryOptionsBuilder();
  set options(_i1.GPageQueryOptionsBuilder? options) =>
      _$this._options = options;

  GPostsVarsBuilder();

  GPostsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _options = $v.options?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostsVars;
  }

  @override
  void update(void Function(GPostsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostsVars build() => _build();

  _$GPostsVars _build() {
    _$GPostsVars _$result;
    try {
      _$result = _$v ?? new _$GPostsVars._(options: _options?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPostsVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPostFragmentVars extends GPostFragmentVars {
  factory _$GPostFragmentVars(
          [void Function(GPostFragmentVarsBuilder)? updates]) =>
      (new GPostFragmentVarsBuilder()..update(updates))._build();

  _$GPostFragmentVars._() : super._();

  @override
  GPostFragmentVars rebuild(void Function(GPostFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostFragmentVarsBuilder toBuilder() =>
      new GPostFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostFragmentVars;
  }

  @override
  int get hashCode {
    return 121140956;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GPostFragmentVars').toString();
  }
}

class GPostFragmentVarsBuilder
    implements Builder<GPostFragmentVars, GPostFragmentVarsBuilder> {
  _$GPostFragmentVars? _$v;

  GPostFragmentVarsBuilder();

  @override
  void replace(GPostFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostFragmentVars;
  }

  @override
  void update(void Function(GPostFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostFragmentVars build() => _build();

  _$GPostFragmentVars _build() {
    final _$result = _$v ?? new _$GPostFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
