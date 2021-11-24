import 'package:dartz/dartz.dart';
import 'package:hse_product/core/error/failures.dart';

abstract class SplashRepository {
  Future<Either<Failure, bool>> loginCheck();
}
