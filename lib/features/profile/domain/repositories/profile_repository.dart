import 'package:dartz/dartz.dart';
import 'package:hse_product/core/domain/entities/data_login.dart';
import 'package:hse_product/core/error/failures.dart';

abstract class ProfileRepository {
  Future<Either<Failure, DataLogin>> getProfile();
  Future<Either<Failure, bool>> logoutProfile();
}
