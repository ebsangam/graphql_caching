import 'dart:convert';

class Post {
  final String id;
  final String title;
  final String body;
  final String userName;
  final String userEmail;
  Post({
    required this.id,
    required this.title,
    required this.body,
    required this.userName,
    required this.userEmail,
  });

  Post copyWith({
    String? id,
    String? title,
    String? body,
    String? userName,
    String? userEmail,
  }) {
    return Post(
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
      userName: userName ?? this.userName,
      userEmail: userEmail ?? this.userEmail,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'body': body,
      'userName': userName,
      'userEmail': userEmail,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      id: map['id'] as String,
      title: map['title'] as String,
      body: map['body'] as String,
      userName: map['userName'] as String,
      userEmail: map['userEmail'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) =>
      Post.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Post(id: $id, title: $title, body: $body, userName: $userName, userEmail: $userEmail)';
  }

  @override
  bool operator ==(covariant Post other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.body == body &&
        other.userName == userName &&
        other.userEmail == userEmail;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        body.hashCode ^
        userName.hashCode ^
        userEmail.hashCode;
  }
}
