import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Movie extends Equatable {
  final String backdropPath;
  final List<int> genreIds;
  final int id;
  final String overview;
  final String posterPath;
  final String title;
  final num voteAverage;
  final String releaseDate;

  const Movie(
      {required this.backdropPath,
      required this.genreIds,
      required this.id,
      required this.overview,
      required this.posterPath,
      required this.title,
      required this.voteAverage,
      required this.releaseDate});

 

  @override
  List<Object?> get props => [
        id,
        genreIds,
        overview,
        posterPath,
        title,
        voteAverage,
        backdropPath,
        releaseDate
      ];
}
