part of 'movie_detail_bloc.dart';

abstract class MovieDetailEvent extends Equatable {
  const MovieDetailEvent();

  @override
  List<Object> get props => [];
}

class GetMovieDetailEvent extends MovieDetailEvent{
  final int id;

  const GetMovieDetailEvent({required this.id});
}


class GetMovieRecomEvent extends MovieDetailEvent{
  final int id;

  const GetMovieRecomEvent({required this.id});
}
