part of 'posts_bloc.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState({
    required List<Post> posts,
  }) = _PostsState;

  factory PostsState.initial() => const PostsState(posts: []);
}
