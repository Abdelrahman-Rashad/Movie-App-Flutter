import 'package:equatable/equatable.dart';
import 'package:movies/core/enums/request_state.dart';
import 'package:movies/movies/domain/entity/movie.dart';

class MovieState extends Equatable {
  final List<Movie> nowPlayingMovies;
  final RequestState nowPlayingState;
  final String nowPlayingmassage;
  final List<Movie> popularMovies;
  final RequestState popularState;
  final String popularmassage;
  final List<Movie> topRatedMovies;
  final RequestState topRatedState;
  final String topRatedmassage;

  const MovieState({
    this.nowPlayingMovies = const [],
    this.nowPlayingState = RequestState.loading,
    this.nowPlayingmassage = "",
    this.popularMovies = const [],
    this.popularState=RequestState.loading,
    this.popularmassage= "",
    this.topRatedMovies= const [],
    this.topRatedState=RequestState.loading,
    this.topRatedmassage= "",
  });

  MovieState copyWith({
   List<Movie>? nowPlayingMovies,
   RequestState? nowPlayingState,
   String? nowPlayingmassage,
   List<Movie>? popularMovies,
   RequestState? popularState,
   String? popularmassage,
   List<Movie>? topRatedMovies,
   RequestState? topRatedState,
   String? topRatedmassage,
  }){
    return MovieState(
      nowPlayingMovies: nowPlayingMovies??this.nowPlayingMovies,
      nowPlayingState: nowPlayingState??this.nowPlayingState,
      nowPlayingmassage: nowPlayingmassage??this.nowPlayingmassage,
      popularMovies: popularMovies??this.popularMovies,
      popularState: popularState??this.popularState,
      popularmassage: popularmassage??this.popularmassage,
      topRatedMovies: topRatedMovies??this.topRatedMovies,
      topRatedState: topRatedState?? this.topRatedState,
      topRatedmassage: topRatedmassage??this.topRatedmassage,
    );
  }

  @override
  List<Object?> get props =>
      [nowPlayingMovies, nowPlayingState, nowPlayingmassage,popularMovies,popularState,popularmassage,topRatedMovies,topRatedState,topRatedmassage];
}
