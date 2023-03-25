import 'package:equatable/equatable.dart';

abstract class Failure {
  final String massage;
  const Failure(this.massage);
}

class ServerFailure extends Failure {
  const ServerFailure(super.massage);
}

class LocalDataBaseFailure extends Failure {
  const LocalDataBaseFailure(super.massage);
}
