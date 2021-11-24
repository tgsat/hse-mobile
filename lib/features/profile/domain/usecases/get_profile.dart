import 'package:dartz/dartz.dart';
import 'package:hse_product/core/domain/entities/data_login.dart';
import 'package:hse_product/core/domain/usecases/usecase.dart';
import 'package:hse_product/core/error/failures.dart';
import 'package:hse_product/features/profile/domain/repositories/profile_repository.dart';

class GetProfile extends UseCase<DataLogin, NoParams> {
  final ProfileRepository profileRepository;

  GetProfile(this.profileRepository);

  @override
  Future<Either<Failure, DataLogin>> call(NoParams params) async {
    return await profileRepository.getProfile();
  }
}
