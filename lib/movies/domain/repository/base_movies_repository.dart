import 'package:dartz/dartz.dart';
import 'package:movies/core/error/failure.dart';
import 'package:movies/movies/domain/entity/movie.dart';

abstract class BaseMoviesRepository{

  Future<Either<Failure,List<Movie>>> getNowPlaying();
  Future<Either<Failure,List<Movie>>> getPopularMovies();
  Future<Either<Failure,List<Movie>>> getTopRatedMovies();

}