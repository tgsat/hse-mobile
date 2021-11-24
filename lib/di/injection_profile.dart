import 'package:hse_product/features/profile/data/datasources/profile_local_data_source.dart';
import 'package:hse_product/features/profile/data/datasources/profile_remote_data_source.dart';
import 'package:hse_product/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:hse_product/features/profile/domain/repositories/profile_repository.dart';
import 'package:hse_product/features/profile/domain/usecases/get_profile.dart';
import 'package:hse_product/features/profile/domain/usecases/logout_profile.dart';
import 'package:hse_product/features/profile/presentation/bloc/profile_bloc.dart';

import 'injection_container.dart';

Future<void> initProfile() async {
  // Bloc
  sl.registerFactory(() => ProfileBloc(getProfile: sl(), logoutProfile: sl()));

  // Use cases
  sl.registerLazySingleton(() => GetProfile(sl()));
  sl.registerLazySingleton(() => LogoutProfile(sl()));

  // Repository
  sl.registerLazySingleton<ProfileRepository>(
    () => ProfileRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
    ),
  );

  // Data Source
  sl.registerLazySingleton<ProfileLocalDataSource>(
    () => ProfileLocalDataSourceImpl(sharedPreferences: sl()),
  );
  sl.registerLazySingleton<ProfileRemoteDataSource>(
    () => ProfileRemoteDataSourceImpl(),
  );
}
