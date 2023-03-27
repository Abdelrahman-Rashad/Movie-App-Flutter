import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:movies/movies/data/models/movie_detail_model.dart';
import 'package:movies/movies/domain/entity/movieDetail.dart';
import 'package:movies/movies/domain/usecases/get_movie_detail_usecase.dart';
import 'package:movies/movies/domain/usecases/get_recommended_movies_usecase.dart';

import '../../../../core/enums/request_state.dart';
import '../../../domain/entity/recommend.dart';

part 'movie_detail_event.dart';
part 'movie_detail_state.dart';

class MovieDetailBloc extends Bloc<MovieDetailEvent, MovieDetailState> {
  final GetMovieDetialUseCase getMovieDetialUseCase;
  final GetRecommendedMoviesUseCase getRecommendedMoviesUseCase;
  MovieDetailBloc(this.getMovieDetialUseCase, this.getRecommendedMoviesUseCase)
      : super(const MovieDetailState()) {
    on<GetMovieDetailEvent>(_getMovieDetail);
    on<GetMovieRecomEvent>(_getRecommended);
  }

  FutureOr<void> _getMovieDetail(
      GetMovieDetailEvent event, Emitter<MovieDetailState> emit) async {
    final result =
        await getMovieDetialUseCase(MovieDetailParameter(id: event.id));

    result.fold(
        (l) => emit(state.copyWith(
            movieDetailMassage: l.massage, requestOptions: RequestState.error)),
        (r) => emit(state.copyWith(
            movieDetailModel: r, requestOptions: RequestState.loaded)));
  }

  FutureOr<void> _getRecommended(
      GetMovieRecomEvent event, Emitter<MovieDetailState> emit) async {
    final result =
        await getRecommendedMoviesUseCase(RecommendMoviesPara(id: event.id));
    result.fold(
        (l) => emit(state.copyWith(
            movieRecommendMassage: l.massage, requestOptionsreco: RequestState.error)),
        (r) => emit(state.copyWith(
            movieRecommendModel: r, requestOptionsreco: RequestState.loaded)));
  }
}
