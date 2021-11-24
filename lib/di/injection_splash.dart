import 'package:hse_product/features/splash/data/datasources/splash_local_data_source.dart';
import 'package:hse_product/features/splash/data/repositories/splash_repository_impl.dart';
import 'package:hse_product/features/splash/domain/repositories/splash_repository.dart';
import 'package:hse_product/features/splash/domain/usecases/splash_login_check.dart';
import 'package:hse_product/features/splash/presentation/bloc/splash_bloc.dart';

import 'injection_container.dart';

Future<void> initSplash() async {
  // Bloc
  sl.registerFactory(() => SplashBloc(splashLoginCheck: sl()));

  // Use cases
  sl.registerLazySingleton(() => SplashLoginCheck(sl()));

  // Repository
  sl.registerLazySingleton<SplashRepository>(
    () => SplashRepositoryImpl(
      localDataSource: sl(),
    ),
  );

  // Data sources
  sl.registerLazySingleton<SplashLocalDataSource>(
    () => SplashLocalDataSourceImpl(sharedPreferences: sl()),
  );
}
