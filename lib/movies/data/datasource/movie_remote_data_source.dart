import 'package:dio/dio.dart';
import 'package:movies/core/constants/app_constants.dart';
import 'package:movies/core/dataProvider/remote/diohelper.dart';
import 'package:movies/core/error/error_massage_model.dart';
import 'package:movies/core/error/exceptions.dart';
import 'package:movies/movies/data/models/movie_detail_model.dart';
import 'package:movies/movies/data/models/movie_model.dart';
import 'package:movies/movies/data/models/recommend_model.dart';
import 'package:movies/movies/domain/usecases/get_movie_detail_usecase.dart';
import 'package:movies/movies/domain/usecases/get_recommended_movies_usecase.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MovieModel>> getNowPlaying();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();
  Future<MovieDetailModel> getMovieDetial(MovieDetailParameter parameter);
  Future<List<RecommendModel>> getrRecommendedMovie(RecommendMoviesPara parameter);

}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  @override
  Future<List<MovieModel>> getNowPlaying() async {
    Response response =
        await DioHelper.getData(endpoint: AppConstants.NOWPLAYING);
    if (response.statusCode == 200) {
      return List<MovieModel>.from(
          (response.data["results"] as List).map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMassageModel: ErrorMassageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async {
    Response response = await DioHelper.getData(endpoint: AppConstants.POPULAR);
    if (response.statusCode == 200) {
      return List<MovieModel>.from(
          (response.data["results"] as List).map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMassageModel: ErrorMassageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
    Response response =
        await DioHelper.getData(endpoint: AppConstants.TOPRATED);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data["results"] as List).map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMassageModel: ErrorMassageModel.fromJson(response.data));
    }
  }
  
  @override
  Future<MovieDetailModel> getMovieDetial(MovieDetailParameter parameter)async {
    Response response =await DioHelper.getData(endpoint: AppConstants.GETDETAIL(parameter.id));
    if(response.statusCode==200){
      return MovieDetailModel.fromjson(response.data);
    }else{
      throw ServerException(errorMassageModel: ErrorMassageModel.fromJson(response.data));
    }
  }
  
  @override
  Future<List<RecommendModel>> getrRecommendedMovie(RecommendMoviesPara parameter)async {
    Response response= await DioHelper.getData(endpoint: AppConstants.GETRECOMMENDEDMOVIES(parameter.id));
    if(response.statusCode==200){
      return (response.data['results']as List).map((e) => RecommendModel.fromJson(e)).toList();
    }else{
      throw ServerException(errorMassageModel: ErrorMassageModel.fromJson(response.data));
    }
  }
}
