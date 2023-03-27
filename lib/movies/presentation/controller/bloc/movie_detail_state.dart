part of 'movie_detail_bloc.dart';

 class MovieDetailState extends Equatable {
  final MovieDetail? movieDetailModel;
  final RequestState requestOptions;
  final String movieDetailMassage;
  final List<Recommend> movieRecommendModel;
  final RequestState requestOptionsreco;
  final String movieRecommendMassage;

  const MovieDetailState({
       this.movieDetailModel,
       this.requestOptions=RequestState.loading,
       this.movieDetailMassage='',
       this.movieRecommendModel=const [],
       this.requestOptionsreco=RequestState.loading,
       this.movieRecommendMassage=''});

  MovieDetailState copyWith(
      {MovieDetail? movieDetailModel,
      RequestState? requestOptions,
      String? movieDetailMassage,
      List<Recommend>? movieRecommendModel,
      RequestState? requestOptionsreco,
      String? movieRecommendMassage}) {
    return MovieDetailState(
        movieDetailMassage: movieDetailMassage ?? this.movieDetailMassage,
        movieDetailModel: movieDetailModel ?? this.movieDetailModel,
        requestOptions: requestOptions ?? this.requestOptions,
        movieRecommendMassage: movieRecommendMassage ?? this.movieRecommendMassage,
        movieRecommendModel: movieRecommendModel ?? this.movieRecommendModel,
        requestOptionsreco: requestOptionsreco ?? this.requestOptionsreco);
  }

  @override
  List<Object?> get props =>
      [movieDetailMassage, movieDetailModel, requestOptions,movieRecommendMassage,movieRecommendModel,requestOptionsreco];
}
