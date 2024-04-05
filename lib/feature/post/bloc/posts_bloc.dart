import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_caching/model/post.dart';
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
  }
  final ZeroRepo _repo;

  FutureOr<void> _onPostFetchEvent(
    PostsFetchEvent event,
    Emitter<PostsState> emit,
  ) async {
    await emit.forEach(
      _repo.posts,
      onData: (data) {
        return PostsState(posts: data.data ?? []);
      },
    );
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
}
