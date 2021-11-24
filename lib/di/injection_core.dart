import 'package:hse_product/core/data/datasources/common_local_data_source.dart';
import 'package:hse_product/core/data/repositories/common_repository_impl.dart';
import 'package:hse_product/core/domain/repositories/common_repository.dart';
import 'package:hse_product/core/domain/usecases/get_profile_common.dart';
import 'package:hse_product/core/presentation/blocs/age_bloc/age_bloc.dart';
import 'package:hse_product/core/presentation/blocs/communication_type_bloc/communication_type_bloc.dart';
import 'package:hse_product/core/presentation/blocs/email_bloc/email_bloc.dart';
import 'package:hse_product/core/presentation/blocs/month_bloc/month_bloc.dart';
import 'package:hse_product/core/presentation/blocs/name_bloc/name_bloc.dart';
import 'package:hse_product/core/presentation/blocs/single_attachment_bloc/single_attachment_bloc.dart';
import 'package:hse_product/core/presentation/blocs/stakeholder_criteria_bloc/stakeholder_criteria_bloc.dart';
import 'package:hse_product/core/presentation/blocs/years_bloc/years_bloc.dart';
import 'package:hse_product/core/utils/helpers/dio_init.dart';
import 'package:hse_product/core/utils/helpers/navigation_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'injection_container.dart';

Future<void> initCore() async {
  // Bloc
  sl.registerFactory(() => StakeholderCriteriaBloc());
  sl.registerFactory(() => AgeBloc());
  sl.registerFactory(() => CommunicationTypeBloc());
  sl.registerFactory(() => SingleAttachmentBloc());
  sl.registerFactory(() => YearsBloc());
  sl.registerFactory(() => MonthBloc());
  sl.registerFactory(() => NameBloc(getProfile: sl()));
  sl.registerFactory(() => EmailBloc(getProfile: sl()));

  // Use cases
  sl.registerLazySingleton(() => GetProfileCommon(sl()));

  // Repository
  sl.registerLazySingleton<CommonRepository>(
    () => CommonRepositoryImpl(
      localDataSource: sl(),
    ),
  );

  // Data Source
  sl.registerLazySingleton<CommonLocalDataSource>(
    () => CommonLocalDataSourceImpl(sharedPreferences: sl()),
  );

  //! Core
  // sl.registerLazySingleton(() => InputConverter());
  // sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => initDio());
  // sl.registerLazySingleton(() => DataConnectionChecker());
  sl.registerLazySingleton(() => NavigationService());
}
