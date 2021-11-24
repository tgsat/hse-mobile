import 'package:shared_preferences/shared_preferences.dart';
import 'package:hse_product/core/utils/values/shared_pref_const.dart';

abstract class SplashLocalDataSource {
  /// Throws [CacheException] if no cached data is present.
  Future<bool> checkLogin();
}

class SplashLocalDataSourceImpl implements SplashLocalDataSource {
  final SharedPreferences sharedPreferences;

  SplashLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<bool> checkLogin() async {
    return sharedPreferences.getBool(IS_LOGIN) ?? false;
  }
}
