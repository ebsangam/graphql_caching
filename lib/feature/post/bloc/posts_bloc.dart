import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_caching/model/post.dart';
import 'package:graphql_caching/model/result.dart';
import 'package:graphql_caching/repo/zero_repo.dart';
import 'package:injectable/injectable.dart';

part 'posts_bloc.freezed.dart';
part 'posts_event.dart';
part 'posts_state.dart';

@injectable
class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc(this._repo) : super(PostsState.initial()) {
    on<PostsFetchEvent>(_onPostFetchEvent);
    on<PostsRefreshEvent>(_onPostRefreshEvent, transformer: restartable());
    on<PostsDeleteEvent>(_onPostDeleteEvent);
    on<PostsCreateEvent>(_onPostCreateEvent);
    on<PostsNextPageEvent>(_onPostsNextPageEvent, transformer: droppable());
  }
  final ZeroRepo _repo;

  bool refreshing = false;

  FutureOr<void> _onPostFetchEvent(
    PostsFetchEvent event,
    Emitter<PostsState> emit,
  ) async {
    await emit.forEach(
      _repo.posts,
      onData: (data) {
        if (data.dataSource == DataSource.link) {
          refreshing = false;
        }

        return PostsState(
          posts: data.data ?? [],
          error: data.error,
          page: ((data.data?.length ?? 0) / 10).ceil(),
          dataSource: data.dataSource,
        );
      },
    );
  }

  FutureOr<void> _onPostCreateEvent(
    PostsCreateEvent event,
    Emitter<PostsState> emit,
  ) async {
    await _repo
        .create(title: event.title, body: event.body)
        .firstWhere((element) => element.dataSource == DataSource.link);
  }

  FutureOr<void> _onPostRefreshEvent(
    PostsRefreshEvent event,
    Emitter<PostsState> emit,
  ) {
    _repo.refresh();
  }

  FutureOr<void> _onPostDeleteEvent(
    PostsDeleteEvent event,
    Emitter<PostsState> emit,
  ) {
    _repo.delete(event.id);
  }

  FutureOr<void> _onPostsNextPageEvent(
    PostsNextPageEvent event,
    Emitter<PostsState> emit,
  ) {
    if (!refreshing) {
      refreshing = true;
      _repo.nextPage(state.page + 1);
    }
  }
}
