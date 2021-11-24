import 'package:dartz/dartz.dart';
import 'package:hse_product/core/domain/entities/login.dart';
import 'package:hse_product/core/domain/usecases/usecase.dart';
import 'package:hse_product/core/error/failures.dart';
import 'package:hse_product/features/login/domain/repositories/login_repository.dart';

class LoginLinkedin implements UseCase<Login, Params> {
  final LoginRepository repository;

  LoginLinkedin(this.repository);

  @override
  Future<Either<Failure, Login>> call(Params params) async {
    return await repository.loginLinkedin(params.token);
  }
}

class Params {
  final String token;

  Params({required this.token});
}
