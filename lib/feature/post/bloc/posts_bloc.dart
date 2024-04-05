import 'dart:async';

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
  }
  final ZeroRepo _repo;

  FutureOr<void> _onPostFetchEvent(
    PostsFetchEvent event,
    Emitter<PostsState> emit,
  ) {
    emit.forEach(
      _repo.getPost(),
      onData: (data) => PostsState(posts: data.data ?? []),
    );
  }
}
