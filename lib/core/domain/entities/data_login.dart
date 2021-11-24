class DataLogin {
  final String? id;
  final String? name;
  final String? email;
  final String? picture;
  final dynamic phone;
  final dynamic namaPerusahaan;
  final String? accessToken;
  final String? tokenType;
  final int? expiresIn;

  DataLogin({
    required this.id,
    required this.name,
    required this.email,
    required this.picture,
    required this.phone,
    required this.namaPerusahaan,
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
  });
}
