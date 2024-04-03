// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page.var.gql.dart';

*************************************************************************
// BuiltValueGenerator
*************************************************************************

Serializer<GPageVars> _$gPageVarsSerializer = new _$GPageVarsSerializer();

class _$GPageVarsSerializer implements StructuredSerializer<GPageVars> {
  @override
  final Iterable<Type> types = const [GPageVars, _$GPageVars];
  @override
  final String wireName = 'GPageVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPageVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GPageVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GPageVarsBuilder().build();
  }
}

class _$GPageVars extends GPageVars {
  factory _$GPageVars([void Function(GPageVarsBuilder)? updates]) =>
      (new GPageVarsBuilder()..update(updates))._build();

  _$GPageVars._() : super._();

  @override
  GPageVars rebuild(void Function(GPageVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPageVarsBuilder toBuilder() => new GPageVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPageVars;
  }

  @override
  int get hashCode {
    return 597728452;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GPageVars').toString();
  }
}

class GPageVarsBuilder implements Builder<GPageVars, GPageVarsBuilder> {
  _$GPageVars? _$v;

  GPageVarsBuilder();

  @override
  void replace(GPageVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPageVars;
  }

  @override
  void update(void Function(GPageVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPageVars build() => _build();

  _$GPageVars _build() {
    final _$result = _$v ?? new _$GPageVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
