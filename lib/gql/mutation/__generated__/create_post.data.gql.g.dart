// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreatePostData> _$gCreatePostDataSerializer =
    new _$GCreatePostDataSerializer();
Serializer<GCreatePostData_createPost> _$gCreatePostDataCreatePostSerializer =
    new _$GCreatePostData_createPostSerializer();
Serializer<GCreatePostData_createPost_user>
    _$gCreatePostDataCreatePostUserSerializer =
    new _$GCreatePostData_createPost_userSerializer();

class _$GCreatePostDataSerializer
    implements StructuredSerializer<GCreatePostData> {
  @override
  final Iterable<Type> types = const [GCreatePostData, _$GCreatePostData];
  @override
  final String wireName = 'GCreatePostData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCreatePostData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.createPost;
    if (value != null) {
      result
        ..add('createPost')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCreatePostData_createPost)));
    }
    return result;
  }

  @override
  GCreatePostData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePostDataBuilder();

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
        case 'createPost':
          result.createPost.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GCreatePostData_createPost))!
              as GCreatePostData_createPost);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreatePostData_createPostSerializer
    implements StructuredSerializer<GCreatePostData_createPost> {
  @override
  final Iterable<Type> types = const [
    GCreatePostData_createPost,
    _$GCreatePostData_createPost
  ];
  @override
  final String wireName = 'GCreatePostData_createPost';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreatePostData_createPost object,
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
            specifiedType: const FullType(GCreatePostData_createPost_user)));
    }
    return result;
  }

  @override
  GCreatePostData_createPost deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePostData_createPostBuilder();

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
                  specifiedType:
                      const FullType(GCreatePostData_createPost_user))!
              as GCreatePostData_createPost_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreatePostData_createPost_userSerializer
    implements StructuredSerializer<GCreatePostData_createPost_user> {
  @override
  final Iterable<Type> types = const [
    GCreatePostData_createPost_user,
    _$GCreatePostData_createPost_user
  ];
  @override
  final String wireName = 'GCreatePostData_createPost_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreatePostData_createPost_user object,
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
  GCreatePostData_createPost_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreatePostData_createPost_userBuilder();

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

class _$GCreatePostData extends GCreatePostData {
  @override
  final String G__typename;
  @override
  final GCreatePostData_createPost? createPost;

  factory _$GCreatePostData([void Function(GCreatePostDataBuilder)? updates]) =>
      (new GCreatePostDataBuilder()..update(updates))._build();

  _$GCreatePostData._({required this.G__typename, this.createPost})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreatePostData', 'G__typename');
  }

  @override
  GCreatePostData rebuild(void Function(GCreatePostDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePostDataBuilder toBuilder() =>
      new GCreatePostDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePostData &&
        G__typename == other.G__typename &&
        createPost == other.createPost;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, createPost.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GCreatePostData')
          ..add('G__typename', G__typename)
          ..add('createPost', createPost))
        .toString();
  }
}

class GCreatePostDataBuilder
    implements Builder<GCreatePostData, GCreatePostDataBuilder> {
  _$GCreatePostData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCreatePostData_createPostBuilder? _createPost;
  GCreatePostData_createPostBuilder get createPost =>
      _$this._createPost ??= new GCreatePostData_createPostBuilder();
  set createPost(GCreatePostData_createPostBuilder? createPost) =>
      _$this._createPost = createPost;

  GCreatePostDataBuilder() {
    GCreatePostData._initializeBuilder(this);
  }

  GCreatePostDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _createPost = $v.createPost?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreatePostData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePostData;
  }

  @override
  void update(void Function(GCreatePostDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreatePostData build() => _build();

  _$GCreatePostData _build() {
    _$GCreatePostData _$result;
    try {
      _$result = _$v ??
          new _$GCreatePostData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCreatePostData', 'G__typename'),
              createPost: _createPost?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'createPost';
        _createPost?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GCreatePostData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreatePostData_createPost extends GCreatePostData_createPost {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final GCreatePostData_createPost_user? user;

  factory _$GCreatePostData_createPost(
          [void Function(GCreatePostData_createPostBuilder)? updates]) =>
      (new GCreatePostData_createPostBuilder()..update(updates))._build();

  _$GCreatePostData_createPost._(
      {required this.G__typename, this.id, this.title, this.body, this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreatePostData_createPost', 'G__typename');
  }

  @override
  GCreatePostData_createPost rebuild(
          void Function(GCreatePostData_createPostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePostData_createPostBuilder toBuilder() =>
      new GCreatePostData_createPostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePostData_createPost &&
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
    return (newBuiltValueToStringHelper(r'GCreatePostData_createPost')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('body', body)
          ..add('user', user))
        .toString();
  }
}

class GCreatePostData_createPostBuilder
    implements
        Builder<GCreatePostData_createPost, GCreatePostData_createPostBuilder> {
  _$GCreatePostData_createPost? _$v;

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

  GCreatePostData_createPost_userBuilder? _user;
  GCreatePostData_createPost_userBuilder get user =>
      _$this._user ??= new GCreatePostData_createPost_userBuilder();
  set user(GCreatePostData_createPost_userBuilder? user) => _$this._user = user;

  GCreatePostData_createPostBuilder() {
    GCreatePostData_createPost._initializeBuilder(this);
  }

  GCreatePostData_createPostBuilder get _$this {
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
  void replace(GCreatePostData_createPost other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePostData_createPost;
  }

  @override
  void update(void Function(GCreatePostData_createPostBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreatePostData_createPost build() => _build();

  _$GCreatePostData_createPost _build() {
    _$GCreatePostData_createPost _$result;
    try {
      _$result = _$v ??
          new _$GCreatePostData_createPost._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GCreatePostData_createPost', 'G__typename'),
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
            r'GCreatePostData_createPost', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCreatePostData_createPost_user
    extends GCreatePostData_createPost_user {
  @override
  final String G__typename;
  @override
  final String? name;
  @override
  final String? email;

  factory _$GCreatePostData_createPost_user(
          [void Function(GCreatePostData_createPost_userBuilder)? updates]) =>
      (new GCreatePostData_createPost_userBuilder()..update(updates))._build();

  _$GCreatePostData_createPost_user._(
      {required this.G__typename, this.name, this.email})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GCreatePostData_createPost_user', 'G__typename');
  }

  @override
  GCreatePostData_createPost_user rebuild(
          void Function(GCreatePostData_createPost_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreatePostData_createPost_userBuilder toBuilder() =>
      new GCreatePostData_createPost_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreatePostData_createPost_user &&
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
    return (newBuiltValueToStringHelper(r'GCreatePostData_createPost_user')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('email', email))
        .toString();
  }
}

class GCreatePostData_createPost_userBuilder
    implements
        Builder<GCreatePostData_createPost_user,
            GCreatePostData_createPost_userBuilder> {
  _$GCreatePostData_createPost_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GCreatePostData_createPost_userBuilder() {
    GCreatePostData_createPost_user._initializeBuilder(this);
  }

  GCreatePostData_createPost_userBuilder get _$this {
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
  void replace(GCreatePostData_createPost_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreatePostData_createPost_user;
  }

  @override
  void update(void Function(GCreatePostData_createPost_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GCreatePostData_createPost_user build() => _build();

  _$GCreatePostData_createPost_user _build() {
    final _$result = _$v ??
        new _$GCreatePostData_createPost_user._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GCreatePostData_createPost_user', 'G__typename'),
            name: name,
            email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
