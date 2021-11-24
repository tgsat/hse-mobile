import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:hse_product/core/domain/entities/post_general.dart';
import 'package:hse_product/core/error/exceptions.dart';
import 'package:hse_product/core/error/failures.dart';
import 'package:hse_product/features/project/data/datasources/project_data_source.dart';
import 'package:hse_product/features/project/domain/entities/list_project.dart';
import 'package:hse_product/features/project/domain/repositories/project_repository.dart';

class ProjectRepositoryImpl implements ProjectRepository {
  final ProjectRemoteDataSource remoteDataSource;

  ProjectRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, PostGeneral>> postProject(
      String projectName,
      String location,
      String projectType,
      String date,
      String name,
      String hp,
      String email,
      String other,
      File file) async {
    try {
      final remoteData = await remoteDataSource.postProject(projectName,
          location, projectType, date, name, hp, email, other, file);
      return Right(remoteData);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, ListProject>> getProjects(String? url) async {
    try {
      final remoteData = await remoteDataSource.getProjects(url);

      return Right(remoteData.toEntity());
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
