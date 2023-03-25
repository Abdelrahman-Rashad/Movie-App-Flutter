import 'package:dartz/dartz.dart';
import 'package:movies/movies/domain/entity/movie.dart';
import 'package:movies/movies/domain/repository/base_movies_repository.dart';

import '../../../core/error/failure.dart';

class GetPopularMoviesUsecase{
  final BaseMoviesRepository baseMoviesRepository;
  const GetPopularMoviesUsecase(this.baseMoviesRepository);

  Future<Either<Failure,List<Movie>>> execute()async{
    return await baseMoviesRepository.getPopularMovies();
  }
}