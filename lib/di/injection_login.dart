import 'package:hse_product/features/login/data/datasources/login_local_data_source.dart';
import 'package:hse_product/features/login/data/datasources/login_remote_data_source.dart';
import 'package:hse_product/features/login/data/repositories/login_repository_impl.dart';
import 'package:hse_product/features/login/domain/repositories/login_repository.dart';
import 'package:hse_product/features/login/domain/usecases/login_facebook.dart';
import 'package:hse_product/features/login/domain/usecases/login_google.dart';
import 'package:hse_product/features/login/domain/usecases/login_linkedin.dart';
import 'package:hse_product/features/login/presentation/bloc/login_bloc.dart';

import 'injection_container.dart';

Future<void> initLogin() async {
  // Bloc
  sl.registerFactory(
    () => LoginBloc(
      loginGoogle: sl(),
      loginFacebook: sl(),
      loginLinkedin: sl(),
    ),
  );

  // Use cases
  sl.registerLazySingleton(() => LoginGoogle(sl()));
  sl.registerLazySingleton(() => LoginFacebook(sl()));
  sl.registerLazySingleton(() => LoginLinkedin(sl()));

  // Repository
  sl.registerLazySingleton<LoginRepository>(
    () => LoginRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
    ),
  );

  // Data Source
  sl.registerLazySingleton<LoginLocalDataSource>(
    () => LoginLocalDataSourceImpl(sharedPreferences: sl()),
  );
  sl.registerLazySingleton<LoginRemoteDataSource>(
    () => LoginRemoteDataSourceImpl(dio: sl()),
  );
}
