import 'package:hse_product/core/domain/entities/data_login.dart';

class DataLoginModel extends DataLogin {
  DataLoginModel({
    this.id,
    this.name,
    this.email,
    this.picture,
    this.phone,
    this.namaPerusahaan,
    this.accessToken,
    this.tokenType,
    this.expiresIn,
  }) : super(
          id: id,
          name: name,
          email: email,
          picture: picture,
          phone: phone,
          namaPerusahaan: namaPerusahaan,
          accessToken: accessToken,
          tokenType: tokenType,
          expiresIn: expiresIn,
        );

  String? id;
  String? name;
  String? email;
  String? picture;
  dynamic phone;
  dynamic namaPerusahaan;
  String? accessToken;
  String? tokenType;
  int? expiresIn;

  factory DataLoginModel.fromJson(Map<String, dynamic> json) => DataLoginModel(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        email: json["email"] == null ? null : json["email"],
        picture: json["picture"] == null ? null : json["picture"],
        phone: json["phone"],
        namaPerusahaan: json["nama_perusahaan"],
        accessToken: json["access_token"] == null ? null : json["access_token"],
        tokenType: json["token_type"] == null ? null : json["token_type"],
        expiresIn: json["expires_in"] == null ? null : json["expires_in"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "email": email == null ? null : email,
        "picture": picture == null ? null : picture,
        "phone": phone,
        "nama_perusahaan": namaPerusahaan,
        "access_token": accessToken == null ? null : accessToken,
        "token_type": tokenType == null ? null : tokenType,
        "expires_in": expiresIn == null ? null : expiresIn,
      };
}
