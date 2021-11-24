import 'package:dartz/dartz.dart';
import 'package:hse_product/core/domain/entities/data_login.dart';
import 'package:hse_product/core/domain/repositories/common_repository.dart';
import 'package:hse_product/core/domain/usecases/usecase.dart';
import 'package:hse_product/core/error/failures.dart';

class GetProfileCommon implements UseCase<DataLogin, NoParams> {
  final CommonRepository repository;

  GetProfileCommon(this.repository);

  @override
  Future<Either<Failure, DataLogin>> call(NoParams params) async {
    return await repository.getProfile();
  }
}
