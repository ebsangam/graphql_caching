part of 'posts_bloc.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState({
    List<Post>? posts,
    Object? error,
  }) = _PostsState;

  const PostsState._();

  factory PostsState.initial() => const PostsState(posts: []);

  bool get hasData => posts != null;
  bool get hasError => error != null;
}
