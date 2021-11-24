import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hse_product/core/data/models/post_general_model.dart';
import 'package:hse_product/core/error/exceptions.dart';
import 'package:hse_product/core/utils/values/endpoints.dart';
import 'package:hse_product/core/utils/values/shared_pref_const.dart';
import 'package:hse_product/features/project/data/models/list_project_model.dart';

abstract class ProjectRemoteDataSource {
  /// Throws a [ServerException] for all error codes.
  Future<PostGeneralModel> postProject(
    String projectName,
    String location,
    String projectType,
    String date,
    String name,
    String hp,
    String email,
    String other,
    File file,
  );

  Future<ListProjectModel> getProjects(String? url);
}

class ProjectRemoteDataSourceImpl extends ProjectRemoteDataSource {
  final Dio dio;
  final SharedPreferences sharedPreferences;

  ProjectRemoteDataSourceImpl(
      {required this.dio, required this.sharedPreferences});

  @override
  Future<PostGeneralModel> postProject(
      String projectName,
      String location,
      String projectType,
      String date,
      String name,
      String hp,
      String email,
      String other,
      File file) async {
    try {
      dio.options.headers['Authorization'] =
          'Bearer ${sharedPreferences.getString(TOKEN)}';

      FormData _formData = new FormData.fromMap({
        'nama_proyek': projectName,
        'lokasi_proyek': location,
        'jenis_proyek': projectType,
        'perkiraan_waktu': date,
        'pemilik_proyek': name,
        'telephone': hp,
        'email': email,
        'informasi_lainnya': other,
      });

      _formData.files
        ..add(
          MapEntry(
            'file',
            await MultipartFile.fromFile(
              file.path,
              filename: basename(file.path),
            ),
          ),
        );

      final response = await dio.post(EndPoints.PROJECT, data: _formData);

      if (response.statusCode == 200) {
        return PostGeneralModel.fromJson(response.data);
      } else {
        throw ServerException();
      }
    } catch (_) {
      throw ServerException();
    }
  }

  @override
  Future<ListProjectModel> getProjects(String? url) async {
    try {
      dio.options.headers['Authorization'] =
          'Bearer ${sharedPreferences.getString(TOKEN)}';

      final response = await dio.get(url ?? EndPoints.PROJECT_ME);

      if (response.statusCode == 200) {
        return ListProjectModel.fromJson(response.data);
      } else {
        throw ServerException();
      }
    } catch (_) {
      throw ServerException();
    }
  }
}
