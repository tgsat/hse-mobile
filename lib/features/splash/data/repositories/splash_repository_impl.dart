import 'package:dartz/dartz.dart';
import 'package:hse_product/core/error/exceptions.dart';
import 'package:hse_product/core/error/failures.dart';
import 'package:hse_product/features/splash/data/datasources/splash_local_data_source.dart';
import 'package:hse_product/features/splash/domain/repositories/splash_repository.dart';

class SplashRepositoryImpl implements SplashRepository {
  final SplashLocalDataSource localDataSource;

  SplashRepositoryImpl({
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, bool>> loginCheck() async {
    try {
      final isLogin = await localDataSource.checkLogin();
      return Right(isLogin);
    } on CacheException {
      return Left(CacheFailure());
    }
  }
}
