import 'package:dartz/dartz.dart';
import 'package:hse_product/core/domain/usecases/usecase.dart';
import 'package:hse_product/core/error/failures.dart';
import 'package:hse_product/features/splash/domain/repositories/splash_repository.dart';

class SplashLoginCheck implements UseCase<bool, NoParams> {
  final SplashRepository repository;

  SplashLoginCheck(this.repository);

  @override
  Future<Either<Failure, bool>> call(NoParams params) {
    return repository.loginCheck();
  }
}
