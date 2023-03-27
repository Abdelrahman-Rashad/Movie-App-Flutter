import 'package:equatable/equatable.dart';

class Recommend extends Equatable{
  final int id;
  final String? backDropPath;

  const Recommend({required this.id, this.backDropPath});
  
  @override
  List<Object?> get props => [id,backDropPath];
}
