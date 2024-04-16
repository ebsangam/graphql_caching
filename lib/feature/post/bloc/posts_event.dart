part of 'posts_bloc.dart';

sealed class PostsEvent {}

class PostsFetchEvent extends PostsEvent {}

class PostsRefreshEvent extends PostsEvent {}

class PostsNextPageEvent extends PostsEvent {}

class PostsCreateEvent extends PostsEvent {
  PostsCreateEvent({required this.title, required this.body});

  final String title;
  final String body;
}

class PostsDeleteEvent extends PostsEvent {
  PostsDeleteEvent(this.id);
  final String id;
}
