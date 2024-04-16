part of 'posts_bloc.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState({
    List<Post>? posts,
    @Default(1) int page,
    Object? error,
    @Default(DataSource.none) DataSource dataSource,
    @Default(true) bool hasMore,
  }) = _PostsState;

  const PostsState._();

  factory PostsState.initial() => const PostsState(posts: []);

  bool get hasData => posts != null;
  bool get hasError => error != null;
}
