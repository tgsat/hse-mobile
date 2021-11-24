import 'package:get_it/get_it.dart';
import 'package:hse_product/di/injection_core.dart';
import 'package:hse_product/di/injection_login.dart';
import 'package:hse_product/di/injection_profile.dart';
import 'package:hse_product/di/injection_project.dart';
import 'package:hse_product/di/injection_splash.dart';

final sl = GetIt.instance;

Future<void> init() async {
  initCore();
  initSplash();
  initLogin();
  initProfile();
  initProject();
}
