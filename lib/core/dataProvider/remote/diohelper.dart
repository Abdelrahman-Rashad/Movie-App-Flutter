import 'package:dio/dio.dart';
import 'package:movies/core/constants/app_constants.dart';

class DioHelper {
  static late Dio dio;

  static init(){
    dio =Dio(
      BaseOptions(
        baseUrl: AppConstants.BASEURL
      )
    );
  }

  static Future<Response> getData({
    required String endpoint,
    Map<String,dynamic>? queryParameters,
    String? token
  })async{
    
      dio.options.headers =
      {
        'Authorization': 'Bearer ${token ?? ''}',
      };
    Response response= await dio.get(endpoint,queryParameters: queryParameters);
    return response;
    
  }
}
