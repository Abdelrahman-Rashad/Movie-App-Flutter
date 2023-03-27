import 'package:dartz/dartz.dart';
import 'package:movies/core/error/failure.dart';
import 'package:movies/movies/domain/entity/movie.dart';
import 'package:movies/movies/domain/entity/movieDetail.dart';
import 'package:movies/movies/domain/entity/recommend.dart';

import '../usecases/get_movie_detail_usecase.dart';
import '../usecases/get_recommended_movies_usecase.dart';

abstract class BaseMoviesRepository{

  Future<Either<Failure,List<Movie>>> getNowPlaying();
  Future<Either<Failure,List<Movie>>> getPopularMovies();
  Future<Either<Failure,List<Movie>>> getTopRatedMovies();
  Future<Either<Failure,MovieDetail>> getMovieDetial(MovieDetailParameter para);
  Future<Either<Failure,List<Recommend>>> getRecommendedMovies(RecommendMoviesPara para);



}