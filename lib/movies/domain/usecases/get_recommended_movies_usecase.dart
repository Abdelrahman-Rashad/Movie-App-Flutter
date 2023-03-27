import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies/core/error/failure.dart';
import 'package:movies/core/usecase/BaseUseCase.dart';
import 'package:movies/movies/domain/entity/recommend.dart';
import 'package:movies/movies/domain/repository/base_movies_repository.dart';

class GetRecommendedMoviesUseCase extends BaseUserCase<List<Recommend>,RecommendMoviesPara>{

  BaseMoviesRepository baseMoviesRepository;
  GetRecommendedMoviesUseCase(this.baseMoviesRepository);
  @override
  Future<Either<Failure, List<Recommend>>> call(RecommendMoviesPara para)async {
    return await baseMoviesRepository.getRecommendedMovies(para);
  }
}

class RecommendMoviesPara extends Equatable{
  final int id;

  const RecommendMoviesPara({required this.id});
  
  @override
  List<Object?> get props => [id];

}