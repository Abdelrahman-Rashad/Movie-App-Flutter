import 'package:equatable/equatable.dart';
import 'package:movies/movies/domain/entity/genres.dart';

class MovieDetail extends Equatable {
  final String backdropPath;
  final int id;
  final String overview;
  final String releaseDate;
  final int runTime;
  final String title;
  final double voteAverage;
  final List<Genres> genres;

  const MovieDetail(
      {required this.backdropPath,
      required this.id,
      required this.overview,
      required this.releaseDate,
      required this.runTime,
      required this.title,
      required this.voteAverage,
      required this.genres});

  @override
  List<Object?> get props => [
        backdropPath,
        genres,
        id,
        overview,
        title,
        releaseDate,
        runTime,
        voteAverage
      ];
}
