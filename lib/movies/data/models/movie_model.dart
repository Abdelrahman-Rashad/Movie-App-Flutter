import 'package:flutter/cupertino.dart';
import 'package:movies/movies/domain/entity/movie.dart';

class MovieModel extends Movie {
  const MovieModel({
    required super.id,
    required super.backdropPath,
    required super.genreIds,
    required super.overview,
    required super.posterPath,
    required super.releaseDate,
    required super.title,
    required super.voteAverage,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
      id: json['id'],
      backdropPath: json['backdrop_path'],
      genreIds: List<int>.from(json['genre_ids'].map((e)=>e)),
      overview: json['overview'],
      posterPath: json['poster_path'],
      releaseDate: json['release_date'],
      title: json['title'],
      voteAverage: json['vote_average']);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['backdrop_path'] = backdropPath;
    data['genre_ids'] = genreIds;
    data['id'] = id;
    data['overview'] = overview;
    data['poster_path'] = posterPath;
    data['release_date'] = releaseDate;
    data['title'] = title;
    data['vote_average'] = voteAverage;
    return data;
  }
}
