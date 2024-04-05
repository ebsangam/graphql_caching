// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPostsData> _$gPostsDataSerializer = new _$GPostsDataSerializer();
Serializer<GPostsData_posts> _$gPostsDataPostsSerializer =
    new _$GPostsData_postsSerializer();
Serializer<GPostsData_posts_data> _$gPostsDataPostsDataSerializer =
    new _$GPostsData_posts_dataSerializer();
Serializer<GPostsData_posts_data_user> _$gPostsDataPostsDataUserSerializer =
    new _$GPostsData_posts_data_userSerializer();
Serializer<GPostFragmentData> _$gPostFragmentDataSerializer =
    new _$GPostFragmentDataSerializer();
Serializer<GPostFragmentData_user> _$gPostFragmentDataUserSerializer =
    new _$GPostFragmentData_userSerializer();

class _$GPostsDataSerializer implements StructuredSerializer<GPostsData> {
  @override
  final Iterable<Type> types = const [GPostsData, _$GPostsData];
  @override
  final String wireName = 'GPostsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPostsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.posts;
    if (value != null) {
      result
        ..add('posts')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GPostsData_posts)));
    }
    return result;
  }

  @override
  GPostsData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostsDataBuilder();

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
        case 'posts':
          result.posts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GPostsData_posts))!
              as GPostsData_posts);
          break;
      }
    }

    return result.build();
  }
}

class _$GPostsData_postsSerializer
    implements StructuredSerializer<GPostsData_posts> {
  @override
  final Iterable<Type> types = const [GPostsData_posts, _$GPostsData_posts];
  @override
  final String wireName = 'GPostsData_posts';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPostsData_posts object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(GPostsData_posts_data)])));
    }
    return result;
  }

  @override
  GPostsData_posts deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostsData_postsBuilder();

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
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GPostsData_posts_data)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GPostsData_posts_dataSerializer
    implements StructuredSerializer<GPostsData_posts_data> {
  @override
  final Iterable<Type> types = const [
    GPostsData_posts_data,
    _$GPostsData_posts_data
  ];
  @override
  final String wireName = 'GPostsData_posts_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostsData_posts_data object,
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
            specifiedType: const FullType(GPostsData_posts_data_user)));
    }
    return result;
  }

  @override
  GPostsData_posts_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostsData_posts_dataBuilder();

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
                  specifiedType: const FullType(GPostsData_posts_data_user))!
              as GPostsData_posts_data_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GPostsData_posts_data_userSerializer
    implements StructuredSerializer<GPostsData_posts_data_user> {
  @override
  final Iterable<Type> types = const [
    GPostsData_posts_data_user,
    _$GPostsData_posts_data_user
  ];
  @override
  final String wireName = 'GPostsData_posts_data_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPostsData_posts_data_user object,
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
  GPostsData_posts_data_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPostsData_posts_data_userBuilder();

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

class _$GPostsData extends GPostsData {
  @override
  final String G__typename;
  @override
  final GPostsData_posts? posts;

  factory _$GPostsData([void Function(GPostsDataBuilder)? updates]) =>
      (new GPostsDataBuilder()..update(updates))._build();

  _$GPostsData._({required this.G__typename, this.posts}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPostsData', 'G__typename');
  }

  @override
  GPostsData rebuild(void Function(GPostsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostsDataBuilder toBuilder() => new GPostsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostsData &&
        G__typename == other.G__typename &&
        posts == other.posts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, posts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPostsData')
          ..add('G__typename', G__typename)
          ..add('posts', posts))
        .toString();
  }
}

class GPostsDataBuilder implements Builder<GPostsData, GPostsDataBuilder> {
  _$GPostsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GPostsData_postsBuilder? _posts;
  GPostsData_postsBuilder get posts =>
      _$this._posts ??= new GPostsData_postsBuilder();
  set posts(GPostsData_postsBuilder? posts) => _$this._posts = posts;

  GPostsDataBuilder() {
    GPostsData._initializeBuilder(this);
  }

  GPostsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _posts = $v.posts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostsData;
  }

  @override
  void update(void Function(GPostsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostsData build() => _build();

  _$GPostsData _build() {
    _$GPostsData _$result;
    try {
      _$result = _$v ??
          new _$GPostsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPostsData', 'G__typename'),
              posts: _posts?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'posts';
        _posts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPostsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPostsData_posts extends GPostsData_posts {
  @override
  final String G__typename;
  @override
  final BuiltList<GPostsData_posts_data?>? data;

  factory _$GPostsData_posts(
          [void Function(GPostsData_postsBuilder)? updates]) =>
      (new GPostsData_postsBuilder()..update(updates))._build();

  _$GPostsData_posts._({required this.G__typename, this.data}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPostsData_posts', 'G__typename');
  }

  @override
  GPostsData_posts rebuild(void Function(GPostsData_postsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostsData_postsBuilder toBuilder() =>
      new GPostsData_postsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostsData_posts &&
        G__typename == other.G__typename &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GPostsData_posts')
          ..add('G__typename', G__typename)
          ..add('data', data))
        .toString();
  }
}

class GPostsData_postsBuilder
    implements Builder<GPostsData_posts, GPostsData_postsBuilder> {
  _$GPostsData_posts? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GPostsData_posts_data?>? _data;
  ListBuilder<GPostsData_posts_data?> get data =>
      _$this._data ??= new ListBuilder<GPostsData_posts_data?>();
  set data(ListBuilder<GPostsData_posts_data?>? data) => _$this._data = data;

  GPostsData_postsBuilder() {
    GPostsData_posts._initializeBuilder(this);
  }

  GPostsData_postsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GPostsData_posts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostsData_posts;
  }

  @override
  void update(void Function(GPostsData_postsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostsData_posts build() => _build();

  _$GPostsData_posts _build() {
    _$GPostsData_posts _$result;
    try {
      _$result = _$v ??
          new _$GPostsData_posts._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPostsData_posts', 'G__typename'),
              data: _data?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GPostsData_posts', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPostsData_posts_data extends GPostsData_posts_data {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final GPostsData_posts_data_user? user;

  factory _$GPostsData_posts_data(
          [void Function(GPostsData_posts_dataBuilder)? updates]) =>
      (new GPostsData_posts_dataBuilder()..update(updates))._build();

  _$GPostsData_posts_data._(
      {required this.G__typename, this.id, this.title, this.body, this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPostsData_posts_data', 'G__typename');
  }

  @override
  GPostsData_posts_data rebuild(
          void Function(GPostsData_posts_dataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostsData_posts_dataBuilder toBuilder() =>
      new GPostsData_posts_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostsData_posts_data &&
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
    return (newBuiltValueToStringHelper(r'GPostsData_posts_data')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('title', title)
          ..add('body', body)
          ..add('user', user))
        .toString();
  }
}

class GPostsData_posts_dataBuilder
    implements Builder<GPostsData_posts_data, GPostsData_posts_dataBuilder> {
  _$GPostsData_posts_data? _$v;

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

  GPostsData_posts_data_userBuilder? _user;
  GPostsData_posts_data_userBuilder get user =>
      _$this._user ??= new GPostsData_posts_data_userBuilder();
  set user(GPostsData_posts_data_userBuilder? user) => _$this._user = user;

  GPostsData_posts_dataBuilder() {
    GPostsData_posts_data._initializeBuilder(this);
  }

  GPostsData_posts_dataBuilder get _$this {
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
  void replace(GPostsData_posts_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostsData_posts_data;
  }

  @override
  void update(void Function(GPostsData_posts_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostsData_posts_data build() => _build();

  _$GPostsData_posts_data _build() {
    _$GPostsData_posts_data _$result;
    try {
      _$result = _$v ??
          new _$GPostsData_posts_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GPostsData_posts_data', 'G__typename'),
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
            r'GPostsData_posts_data', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPostsData_posts_data_user extends GPostsData_posts_data_user {
  @override
  final String G__typename;
  @override
  final String? name;
  @override
  final String? email;

  factory _$GPostsData_posts_data_user(
          [void Function(GPostsData_posts_data_userBuilder)? updates]) =>
      (new GPostsData_posts_data_userBuilder()..update(updates))._build();

  _$GPostsData_posts_data_user._(
      {required this.G__typename, this.name, this.email})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GPostsData_posts_data_user', 'G__typename');
  }

  @override
  GPostsData_posts_data_user rebuild(
          void Function(GPostsData_posts_data_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPostsData_posts_data_userBuilder toBuilder() =>
      new GPostsData_posts_data_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPostsData_posts_data_user &&
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
    return (newBuiltValueToStringHelper(r'GPostsData_posts_data_user')
          ..add('G__typename', G__typename)
          ..add('name', name)
          ..add('email', email))
        .toString();
  }
}

class GPostsData_posts_data_userBuilder
    implements
        Builder<GPostsData_posts_data_user, GPostsData_posts_data_userBuilder> {
  _$GPostsData_posts_data_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  GPostsData_posts_data_userBuilder() {
    GPostsData_posts_data_user._initializeBuilder(this);
  }

  GPostsData_posts_data_userBuilder get _$this {
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
  void replace(GPostsData_posts_data_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPostsData_posts_data_user;
  }

  @override
  void update(void Function(GPostsData_posts_data_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GPostsData_posts_data_user build() => _build();

  _$GPostsData_posts_data_user _build() {
    final _$result = _$v ??
        new _$GPostsData_posts_data_user._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GPostsData_posts_data_user', 'G__typename'),
            name: name,
            email: email);
    replace(_$result);
    return _$result;
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
