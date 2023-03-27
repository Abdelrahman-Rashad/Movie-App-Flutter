import 'package:equatable/equatable.dart';
import 'package:movies/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:movies/core/usecase/BaseUseCase.dart';
import 'package:movies/movies/domain/entity/movieDetail.dart';
import 'package:movies/movies/domain/repository/base_movies_repository.dart';

class GetMovieDetialUseCase extends BaseUserCase<MovieDetail,MovieDetailParameter>{
  final BaseMoviesRepository baseMoviesRepository;

  GetMovieDetialUseCase(this.baseMoviesRepository);


  @override
  Future<Either<Failure, MovieDetail>> call(MovieDetailParameter para)async {
    return await baseMoviesRepository.getMovieDetial(para);
    
  }
}

class MovieDetailParameter extends Equatable{
  final int id;

  const MovieDetailParameter({required this.id});
  
  @override
  // TODO: implement props
  List<Object?> get props => [id];
}