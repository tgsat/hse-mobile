import 'package:dartz/dartz.dart';
import 'package:hse_product/core/domain/entities/login.dart';
import 'package:hse_product/core/error/failures.dart';

abstract class LoginRepository {
  Future<Either<Failure, Login>> loginGoogle();
  Future<Either<Failure, Login>> loginFacebook();
  Future<Either<Failure, Login>> loginLinkedin(String token);
}
