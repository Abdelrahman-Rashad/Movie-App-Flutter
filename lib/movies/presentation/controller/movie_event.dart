import 'package:equatable/equatable.dart';

abstract class MovieEvent extends Equatable {
  const MovieEvent();

  @override
  List<Object?> get props => [];
}

class getNowPlayingEvent extends MovieEvent {}

class getPopularEvent extends MovieEvent {}

class getTopRatedEvent extends MovieEvent {}
