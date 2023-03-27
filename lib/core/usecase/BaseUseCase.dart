import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies/core/error/failure.dart';

abstract class BaseUserCase<T,Parameters>{
  Future<Either<Failure,T>> call(Parameters para);
}

class NoPara extends Equatable{
  const NoPara();
  @override
  List<Object?> get props =>[];
}