import 'package:dartz/dartz.dart';
import 'package:movies/movies/domain/entity/movie.dart';
import 'package:movies/movies/domain/repository/base_movies_repository.dart';

import '../../../core/error/failure.dart';

class GetNowPlayingMoviesUsecase{
  final BaseMoviesRepository baseMoviesRepository;
  const GetNowPlayingMoviesUsecase(this.baseMoviesRepository);

  Future<Either<Failure,List<Movie>>> execute()async{
    return await baseMoviesRepository.getNowPlaying();
  }
}