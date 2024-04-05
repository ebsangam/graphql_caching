part of 'posts_bloc.dart';

sealed class PostsEvent {}

class PostsFetchEvent extends PostsEvent {}

class PostsRefreshEvent extends PostsEvent {}

class PostsDeleteEvent extends PostsEvent {
  PostsDeleteEvent(this.id);
  final int id;
}
