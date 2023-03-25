import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/core/enums/request_state.dart';
import 'package:movies/movies/domain/usecases/get_now_playing_movies_usecase.dart';
import 'package:movies/movies/domain/usecases/get_popular_movies_usecase.dart';
import 'package:movies/movies/domain/usecases/get_top_rated_movies_usecase.dart';
import 'package:movies/movies/presentation/controller/movie_event.dart';
import 'package:movies/movies/presentation/controller/movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final GetNowPlayingMoviesUsecase getNowPlayingMoviesUsecase;
  final GetPopularMoviesUsecase getPopularMoviesUsecase;
  final GetTopRatedMoviesUsecase getTopRatedMoviesUsecase;

  MovieBloc(this.getNowPlayingMoviesUsecase, this.getPopularMoviesUsecase,
      this.getTopRatedMoviesUsecase)
      : super(const MovieState()) {
    on<getNowPlayingEvent>(_getNowPlaying);

    on<getPopularEvent>(_getPopular);
    on<getTopRatedEvent>(_getTopRated);
  }

  FutureOr<void> _getNowPlaying(
      getNowPlayingEvent event, Emitter<MovieState> emit) async {
    final result = await getNowPlayingMoviesUsecase.execute();
    result.fold(
        (l) => emit(state.copyWith(
              nowPlayingState: RequestState.error,
              nowPlayingmassage: l.massage,
            )),
        (r) => emit(state.copyWith(
            nowPlayingMovies: r, nowPlayingState: RequestState.loaded)));
  }

  FutureOr<void> _getPopular(
      getPopularEvent event, Emitter<MovieState> emit) async {
    final result = await getPopularMoviesUsecase.execute();
    result.fold(
        (l) => emit(state.copyWith(
              popularState: RequestState.error,
              popularmassage: l.massage,
            )),
        (r) => emit(state.copyWith(
            popularMovies: r, popularState: RequestState.loaded)));
  }

  FutureOr<void> _getTopRated(getTopRatedEvent event, Emitter<MovieState> emit)async {
    final result = await getTopRatedMoviesUsecase.execute();
      result.fold(
          (l) => emit(state.copyWith(
             topRatedState: RequestState.error,
              topRatedmassage: l.massage,
          )),
          (r) => emit(state.copyWith(topRatedMovies: r, topRatedState: RequestState.loaded)));
  }
}
