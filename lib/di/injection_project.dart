import 'package:hse_product/di/injection_container.dart';
import 'package:hse_product/features/project/data/datasources/project_data_source.dart';
import 'package:hse_product/features/project/data/repositories/project_repository_impl.dart';
import 'package:hse_product/features/project/domain/repositories/project_repository.dart';
import 'package:hse_product/features/project/domain/usecases/get_projects.dart';
import 'package:hse_product/features/project/domain/usecases/post_project.dart';
import 'package:hse_product/features/project/presentation/bloc/list_project_bloc/list_project_bloc.dart';
import 'package:hse_product/features/project/presentation/bloc/project_bloc/project_bloc.dart';

Future<void> initProject() async {
  // Bloc
  sl.registerFactory(() => ProjectBloc(postProject: sl()));
  sl.registerFactory(() => ListProjectBloc(getProject: sl()));

  // Use cases
  sl.registerLazySingleton(() => PostProject(sl()));
  sl.registerLazySingleton(() => GetProjects(sl()));

  // Repository
  sl.registerLazySingleton<ProjectRepository>(
    () => ProjectRepositoryImpl(
      remoteDataSource: sl(),
    ),
  );

  // Data Source
  sl.registerLazySingleton<ProjectRemoteDataSource>(
    () => ProjectRemoteDataSourceImpl(dio: sl(), sharedPreferences: sl()),
  );
}
