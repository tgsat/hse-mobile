import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:hse_product/core/data/models/data_login_model.dart';
import 'package:hse_product/core/error/exceptions.dart';
import 'package:hse_product/core/utils/values/shared_pref_const.dart';

abstract class CommonLocalDataSource {
  /// Throws [CacheException] if no cached data is present.
  Future<DataLoginModel> getProfile();
}

class CommonLocalDataSourceImpl implements CommonLocalDataSource {
  final SharedPreferences sharedPreferences;

  CommonLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<DataLoginModel> getProfile() {
    final jsonString = sharedPreferences.getString(USER);
    if (jsonString != null) {
      return Future.value(DataLoginModel.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }
}
