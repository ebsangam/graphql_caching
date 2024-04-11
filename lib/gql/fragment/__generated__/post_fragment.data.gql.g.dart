// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPostFragmentData> _$gPostFragmentDataSerializer =
    new _$GPostFragmentDataSerializer();
Serializer<GPostFragmentData_user> _$gPostFragmentDataUserSerializer =
    new _$GPostFragmentData_userSerializer();

class _$GPostFragmentDataSerializer
    implements StructuredSerializer<GPostFragmentData> {
  @override
  final Iterable<Type> types = const [GPostFragmentData, _$GPostFragmentData];
  @override
  final String wireName = 'GPostFragmentData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPostFragmentData object,
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
    value = object.title;
    if (value != null) {
      result
        ..add('title')
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
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GPostFragmentData_user)));
    }
    return result;
  }

  @override
  GPostFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostFragmentDataBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GPostFragmentData_user))!
              as GPostFragmentData_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GPostFragmentData_userSerializer
    implements StructuredSerializer<GPostFragmentData_user> {
  @override
  final Iterable<Type> types = const [
    GPostFragmentData_user,
    _$GPostFragmentData_user
  ];
  @override
  final String wireName = 'GPostFragmentData_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostFragmentData_user object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GPostFragmentData_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostFragmentData_userBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GPostFragmentData extends GPostFragmentData {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final GPostFragmentData_user? user;

  factory _$GPostFragmentData(
          [void Function(GPostFragmentDataBuilder)? updates]) =>
      (new GPostFragmentDataBuilder()..update(updates))._build();

  _$GPostFragmentData._(
      {required this.G__typename, this.id, this.title, this.body, this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPostFragmentData', 'G__typename');
  }

  @override
  GPostFragmentData rebuild(void Function(GPostFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostFragmentDataBuilder toBuilder() =>
      new GPostFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostFragmentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        title == other.title &&
        body == other.body &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, body.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPostFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('body', body)
          ..add('user', user))
        .toString();
  }
}

class GPostFragmentDataBuilder
    implements Builder<GPostFragmentData, GPostFragmentDataBuilder> {
  _$GPostFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _body;
  String? get body => _$this._body;
  set body(String? body) => _$this._body = body;

  GPostFragmentData_userBuilder? _user;
  GPostFragmentData_userBuilder get user =>
      _$this._user ??= new GPostFragmentData_userBuilder();
  set user(GPostFragmentData_userBuilder? user) => _$this._user = user;

  GPostFragmentDataBuilder() {
    GPostFragmentData._initializeBuilder(this);
  }

  GPostFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _title = $v.title;
      _body = $v.body;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostFragmentData;
  }

  @override
  void update(void Function(GPostFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostFragmentData build() => _build();

  _$GPostFragmentData _build() {
    _$GPostFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GPostFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPostFragmentData', 'G__typename'),
              id: id,
              title: title,
              body: body,
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPostFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPostFragmentData_user extends GPostFragmentData_user {
  @override
  final String G__typename;
  @override
  final String? name;
  @override
  final String? email;

  factory _$GPostFragmentData_user(
          [void Function(GPostFragmentData_userBuilder)? updates]) =>
      (new GPostFragmentData_userBuilder()..update(updates))._build();

  _$GPostFragmentData_user._({required this.G__typename, this.name, this.email})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPostFragmentData_user', 'G__typename');
  }

  @override
  GPostFragmentData_user rebuild(
          void Function(GPostFragmentData_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostFragmentData_userBuilder toBuilder() =>
      new GPostFragmentData_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostFragmentData_user &&
        G__typename == other.G__typename &&
        name == other.name &&
        email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPostFragmentData_user')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('email', email))
        .toString();
  }
}

class GPostFragmentData_userBuilder
    implements Builder<GPostFragmentData_user, GPostFragmentData_userBuilder> {
  _$GPostFragmentData_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GPostFragmentData_userBuilder() {
    GPostFragmentData_user._initializeBuilder(this);
  }

  GPostFragmentData_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _name = $v.name;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostFragmentData_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostFragmentData_user;
  }

  @override
  void update(void Function(GPostFragmentData_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostFragmentData_user build() => _build();

  _$GPostFragmentData_user _build() {
    final _$result = _$v ??
        new _$GPostFragmentData_user._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GPostFragmentData_user', 'G__typename'),
            name: name,
            email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
