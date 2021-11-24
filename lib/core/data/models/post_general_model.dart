import 'package:hse_product/core/domain/entities/post_general.dart';

class PostGeneralModel extends PostGeneral {
  final bool? status;
  final String? message;

  PostGeneralModel({required this.status, required this.message})
      : super(status: status, message: message);

  factory PostGeneralModel.fromJson(Map<String, dynamic> json) =>
      PostGeneralModel(
        status: json["status"] == null ? null : json["status"],
        message: json["message"] == null ? null : json["message"],
      );
}
