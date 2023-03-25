import 'package:movies/core/error/exceptions.dart';
import 'package:movies/movies/data/datasource/movie_remote_data_source.dart';
import 'package:movies/movies/domain/entity/movie.dart';
import 'package:movies/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:movies/movies/domain/repository/base_movies_repository.dart';

class MoviesRepository extends BaseMoviesRepository{

  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;
  MoviesRepository(this.baseMovieRemoteDataSource);
  @override
  Future<Either<Failure, List<Movie>>> getNowPlaying()async {
    final result=await baseMovieRemoteDataSource.getNowPlaying();
    try{
      return  Right(result);
    }on ServerException catch(e){
      return Left(ServerFailure(e.errorMassageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies()async {
    final result=await baseMovieRemoteDataSource.getPopularMovies();
    try{
      return  Right(result);
    }on ServerException catch(e){
      return Left(ServerFailure(e.errorMassageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies()async {
    final result=await baseMovieRemoteDataSource.getTopRatedMovies();
    try{
      return  Right(result);
    }on ServerException catch(e){
      return Left(ServerFailure(e.errorMassageModel.statusMessage));
    }
  }

}