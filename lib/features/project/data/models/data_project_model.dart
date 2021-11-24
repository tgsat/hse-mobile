import 'package:hse_product/features/project/domain/entities/data_project.dart';

class DataProjectModel {
  DataProjectModel({
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

  DataProject toEntity() => DataProject(
        id: id ?? this.id,
        namaProyek: namaProyek ?? this.namaProyek,
        lokasiProyek: lokasiProyek ?? this.lokasiProyek,
        jenisProyek: jenisProyek ?? this.jenisProyek,
        perkiraanWaktu: perkiraanWaktu ?? this.perkiraanWaktu,
        pemilikProyek: pemilikProyek ?? this.pemilikProyek,
        telephone: telephone ?? this.telephone,
        email: email ?? this.email,
        informasiLainnya: informasiLainnya ?? this.informasiLainnya,
        fileName: fileName ?? this.fileName,
        filePath: filePath ?? this.filePath,
        status: status ?? this.status,
        createdBy: createdBy ?? this.createdBy,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        fileUrl: fileUrl ?? this.fileUrl,
      );

  factory DataProjectModel.fromJson(Map<String, dynamic> json) =>
      DataProjectModel(
        id: json["id"] == null ? null : json["id"],
        namaProyek: json["nama_proyek"] == null ? null : json["nama_proyek"],
        lokasiProyek:
            json["lokasi_proyek"] == null ? null : json["lokasi_proyek"],
        jenisProyek: json["jenis_proyek"] == null ? null : json["jenis_proyek"],
        perkiraanWaktu: json["perkiraan_waktu"] == null
            ? null
            : DateTime.parse(json["perkiraan_waktu"]),
        pemilikProyek:
            json["pemilik_proyek"] == null ? null : json["pemilik_proyek"],
        telephone: json["telephone"] == null ? null : json["telephone"],
        email: json["email"] == null ? null : json["email"],
        informasiLainnya: json["informasi_lainnya"] == null
            ? null
            : json["informasi_lainnya"],
        fileName: json["file_name"] == null ? null : json["file_name"],
        filePath: json["file_path"] == null ? null : json["file_path"],
        status: json["status"],
        createdBy: json["created_by"] == null ? null : json["created_by"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"],
        fileUrl: json["file_url"] == null ? null : json["file_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "nama_proyek": namaProyek == null ? null : namaProyek,
        "lokasi_proyek": lokasiProyek == null ? null : lokasiProyek,
        "jenis_proyek": jenisProyek == null ? null : jenisProyek,
        "perkiraan_waktu": perkiraanWaktu == null
            ? null
            : "${perkiraanWaktu!.year.toString().padLeft(4, '0')}-${perkiraanWaktu!.month.toString().padLeft(2, '0')}-${perkiraanWaktu!.day.toString().padLeft(2, '0')}",
        "pemilik_proyek": pemilikProyek == null ? null : pemilikProyek,
        "telephone": telephone == null ? null : telephone,
        "email": email == null ? null : email,
        "informasi_lainnya": informasiLainnya == null ? null : informasiLainnya,
        "file_name": fileName == null ? null : fileName,
        "file_path": filePath == null ? null : filePath,
        "status": status,
        "created_by": createdBy == null ? null : createdBy,
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt,
        "file_url": fileUrl == null ? null : fileUrl,
      };
}
