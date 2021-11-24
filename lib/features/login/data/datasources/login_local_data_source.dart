import 'package:shared_preferences/shared_preferences.dart';
import 'package:hse_product/core/data/models/data_login_model.dart';
import 'package:hse_product/core/utils/values/shared_pref_const.dart';
import 'dart:convert';

abstract class LoginLocalDataSource {
  /// Throws [CacheException] if no cached data is present.
  Future<void> cacheLoginUser(DataLoginModel loginToCache);
  Future<void> setLogin(bool isLogin);
  Future<void> setToken(String token);
}

class LoginLocalDataSourceImpl implements LoginLocalDataSource {
  final SharedPreferences sharedPreferences;

  LoginLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> cacheLoginUser(DataLoginModel loginToCache) {
    return sharedPreferences.setString(
      USER,
      json.encode(loginToCache.toJson()),
    );
  }

  @override
  Future<void> setLogin(bool isLogin) {
    return sharedPreferences.setBool(IS_LOGIN, isLogin);
  }

  @override
  Future<void> setToken(String token) {
    return sharedPreferences.setString(TOKEN, token);
  }

  // @override
  // Future<LoginModel> getLastLogin() {
  //   final jsonString = sharedPreferences.getString(CACHED_NUMBER_TRIVIA);
  //   if (jsonString != null) {
  //     return Future.value(LoginModel.fromJson(json.decode(jsonString)));
  //   } else {
  //     throw CacheException();
  //   }
  // }

}
