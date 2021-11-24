import 'package:shared_preferences/shared_preferences.dart';
import 'package:hse_product/core/data/models/data_login_model.dart';
import 'package:hse_product/core/error/exceptions.dart';
import 'package:hse_product/core/utils/values/shared_pref_const.dart';
import 'dart:convert';

abstract class ProfileLocalDataSource {
  /// Throws [CacheException] if no cached data is present.
  Future<DataLoginModel> getProfile();
  Future<void> clearCache();
}

class ProfileLocalDataSourceImpl implements ProfileLocalDataSource {
  final SharedPreferences sharedPreferences;

  ProfileLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<DataLoginModel> getProfile() {
    final jsonString = sharedPreferences.getString(USER);
    if (jsonString != null) {
      return Future.value(DataLoginModel.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> clearCache() {
    return sharedPreferences.clear();
  }
}
