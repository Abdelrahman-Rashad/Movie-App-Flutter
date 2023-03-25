import 'package:movies/core/error/error_massage_model.dart';

class ServerException implements Exception {
  final ErrorMassageModel errorMassageModel;
  const ServerException({required this.errorMassageModel});
}
