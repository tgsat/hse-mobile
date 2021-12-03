import 'package:dartz/dartz.dart';
import 'package:hse_product/core/domain/usecases/usecase.dart';
import 'package:hse_product/core/error/failures.dart';
import 'package:hse_product/features/profile/domain/repositories/profile_repository.dart';

class LogoutProfile extends UseCase<bool, NoParams> {
  final ProfileRepository profileRepository;

  LogoutProfile(this.profileRepository);

  @override
  Future<Either<Failure, bool>> call(NoParams params) async {
    return await profileRepository.logoutProfile();
  }
}
