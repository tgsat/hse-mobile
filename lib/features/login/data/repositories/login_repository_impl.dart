import 'package:dartz/dartz.dart';
import 'package:hse_product/core/domain/entities/login.dart';
import 'package:hse_product/core/error/exceptions.dart';
import 'package:hse_product/core/error/failures.dart';
import 'package:hse_product/features/login/data/datasources/login_local_data_source.dart';
import 'package:hse_product/features/login/data/datasources/login_remote_data_source.dart';
import 'package:hse_product/features/login/domain/repositories/login_repository.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginRemoteDataSource remoteDataSource;
  final LoginLocalDataSource localDataSource;
  //final NetworkInfo networkInfo;

  LoginRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, Login>> loginGoogle() async {
    try {
      final remoteData = await remoteDataSource.loginGoogle();
      localDataSource.setLogin(true);
      localDataSource.cacheLoginUser(remoteData.data!);
      localDataSource.setToken(remoteData.data!.accessToken!);
      return Right(remoteData);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Login>> loginFacebook() async {
    try {
      final remoteData = await remoteDataSource.loginFacebook();
      localDataSource.setLogin(true);
      localDataSource.cacheLoginUser(remoteData.data!);
      localDataSource.setToken(remoteData.data!.accessToken!);
      return Right(remoteData);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Login>> loginLinkedin(String token) async {
    try {
      final remoteData = await remoteDataSource.loginLinkedin(token);
      localDataSource.setLogin(true);
      localDataSource.cacheLoginUser(remoteData.data!);
      localDataSource.setToken(remoteData.data!.accessToken!);
      return Right(remoteData);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
