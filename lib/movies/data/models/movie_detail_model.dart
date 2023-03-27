import 'package:movies/movies/data/models/geners_model.dart';
import 'package:movies/movies/domain/entity/movieDetail.dart';

class MovieDetailModel extends MovieDetail {
  const MovieDetailModel(
      {required super.backdropPath,
      required super.id,
      required super.overview,
      required super.releaseDate,
      required super.runTime,
      required super.title,
      required super.voteAverage,
      required super.genres});

  factory MovieDetailModel.fromjson(Map<String, dynamic> json) =>
      MovieDetailModel(
          backdropPath: json["backdrop_path"],
          id: json["id"],
          overview: json["overview"],
          releaseDate: json["release_date"],
          runTime: json["runtime"],
          title: json["title"],
          voteAverage: json["vote_average"].toDouble(),
          genres: List<GenresModel>.from(
              (json["genres"] as List).map((e) => GenresModel.fromjson(e))));
}
