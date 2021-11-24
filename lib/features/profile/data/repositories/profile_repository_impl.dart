import 'package:hse_product/core/error/exceptions.dart';
import 'package:hse_product/core/error/failures.dart';
import 'package:hse_product/core/domain/entities/data_login.dart';
import 'package:dartz/dartz.dart';
import 'package:hse_product/features/profile/data/datasources/profile_local_data_source.dart';
import 'package:hse_product/features/profile/data/datasources/profile_remote_data_source.dart';
import 'package:hse_product/features/profile/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDataSource remoteDataSource;
  final ProfileLocalDataSource localDataSource;

  ProfileRepositoryImpl(
      {required this.remoteDataSource, required this.localDataSource});

  @override
  Future<Either<Failure, DataLogin>> getProfile() async {
    try {
      final profile = await localDataSource.getProfile();
      return Right(profile);
    } on CacheException {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> logoutProfile() async {
    try {
      localDataSource.clearCache();
      remoteDataSource.logoutProfile();
      return Right(true);
    } on CacheException {
      return Left(CacheFailure());
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
