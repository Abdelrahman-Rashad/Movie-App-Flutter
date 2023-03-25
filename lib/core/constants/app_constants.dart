class AppConstants {
  // baseurl
  static const String BASEURL = "https://api.themoviedb.org/3/";
  static const String TOKEN="223b674f2999911fa0d436ac80726d68";

  // endpoint
  static const String NOWPLAYING="movie/now_playing?api_key=$TOKEN";
  static const String TOPRATED="movie/top_rated?api_key=$TOKEN";
  static const String POPULAR="movie/popular?api_key=$TOKEN";


  // Base Image Url
  static const BASEIMAGEURL="https://image.tmdb.org/t/p/w500";

  static String imageUrl(String path)=> "$BASEIMAGEURL$path";

}
