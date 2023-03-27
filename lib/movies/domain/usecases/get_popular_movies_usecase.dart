import 'package:dartz/dartz.dart';
import 'package:movies/core/usecase/BaseUseCase.dart';
import 'package:movies/movies/domain/entity/movie.dart';
import 'package:movies/movies/domain/repository/base_movies_repository.dart';

import '../../../core/error/failure.dart';

class GetPopularMoviesUsecase extends BaseUserCase<List<Movie>,NoPara>{
  final BaseMoviesRepository baseMoviesRepository;
  GetPopularMoviesUsecase(this.baseMoviesRepository);

  @override
  Future<Either<Failure,List<Movie>>> call(NoPara Para)async{
    return await baseMoviesRepository.getPopularMovies();
  }
}