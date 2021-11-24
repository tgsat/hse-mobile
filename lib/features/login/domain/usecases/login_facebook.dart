import 'package:dartz/dartz.dart';
import 'package:hse_product/core/domain/entities/login.dart';
import 'package:hse_product/core/domain/usecases/usecase.dart';
import 'package:hse_product/core/error/failures.dart';
import 'package:hse_product/features/login/domain/repositories/login_repository.dart';

class LoginFacebook implements UseCase<Login, NoParams> {
  final LoginRepository repository;

  LoginFacebook(this.repository);

  @override
  Future<Either<Failure, Login>> call(NoParams params) async {
    return await repository.loginFacebook();
  }
}
