import 'package:equatable/equatable.dart';

class ErrorMassageModel extends Equatable {
  final bool success;
  final int statusCode;
  final String statusMessage;

  const ErrorMassageModel({required this.success,required this.statusCode,required this.statusMessage});

  factory ErrorMassageModel.fromJson(Map<String, dynamic> json) => ErrorMassageModel(
    success : json['success'],
    statusCode : json['status_code'],
    statusMessage : json['status_message']
    );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['status_code'] = this.statusCode;
    data['status_message'] = this.statusMessage;
    return data;
  }

  @override
  List<Object?> get props => [success, statusCode, statusMessage];
}
