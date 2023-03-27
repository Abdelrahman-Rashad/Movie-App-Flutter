import 'package:movies/movies/domain/entity/recommend.dart';

class RecommendModel extends Recommend {
  const RecommendModel({required super.id, super.backDropPath});

  factory RecommendModel.fromJson(Map<String,dynamic> json){
    return RecommendModel(id: json['id'], backDropPath: json['backdrop_path']??"/gslT8t964rYXyqRcqrxFh77ikyb.jpg");
  }
}
