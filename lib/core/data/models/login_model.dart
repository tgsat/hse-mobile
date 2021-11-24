import 'package:hse_product/core/domain/entities/login.dart';

import 'data_login_model.dart';

class LoginModel extends Login {
  LoginModel({
    this.ok,
    this.status,
    this.data,
  }) : super(ok: ok, status: status, data: data);

  bool? ok;
  int? status;
  DataLoginModel? data;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        ok: json["ok"] == null ? null : json["ok"],
        status: json["status"] == null ? null : json["status"],
        data:
            json["data"] == null ? null : DataLoginModel.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "ok": ok == null ? null : ok,
        "status": status == null ? null : status,
        "data": data == null ? null : data!.toJson(),
      };
}
