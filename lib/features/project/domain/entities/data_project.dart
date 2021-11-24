class DataProject {
  DataProject({
    this.id,
    this.namaProyek,
    this.lokasiProyek,
    this.jenisProyek,
    this.perkiraanWaktu,
    this.pemilikProyek,
    this.telephone,
    this.email,
    this.informasiLainnya,
    this.fileName,
    this.filePath,
    this.status,
    this.createdBy,
    this.createdAt,
    this.updatedAt,
    this.fileUrl,
  });

  int? id;
  String? namaProyek;
  String? lokasiProyek;
  String? jenisProyek;
  DateTime? perkiraanWaktu;
  String? pemilikProyek;
  String? telephone;
  String? email;
  String? informasiLainnya;
  String? fileName;
  String? filePath;
  dynamic status;
  int? createdBy;
  DateTime? createdAt;
  dynamic updatedAt;
  String? fileUrl;
}
