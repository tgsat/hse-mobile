import 'package:hse_product/core/data/datasources/common_local_data_source.dart';
import 'package:hse_product/core/domain/entities/data_login.dart';
import 'package:dartz/dartz.dart';
import 'package:hse_product/core/domain/repositories/common_repository.dart';
import 'package:hse_product/core/error/exceptions.dart';
import 'package:hse_product/core/error/failures.dart';

class CommonRepositoryImpl implements CommonRepository {
  final CommonLocalDataSource localDataSource;

  CommonRepositoryImpl({required this.localDataSource});

  @override
  Future<Either<Failure, DataLogin>> getProfile() async {
    try {
      final profile = await localDataSource.getProfile();
      return Right(profile);
    } on CacheException {
      return Left(CacheFailure());
    }
  }
}
