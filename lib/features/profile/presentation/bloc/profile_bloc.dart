import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hse_product/core/domain/entities/data_login.dart';
import 'package:hse_product/core/domain/usecases/usecase.dart';
import 'package:hse_product/core/error/failure_to_message.dart';
import 'package:hse_product/features/profile/domain/usecases/get_profile.dart';
import 'package:hse_product/features/profile/domain/usecases/logout_profile.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetProfile getProfile;
  final LogoutProfile logoutProfile;

  ProfileBloc({required this.getProfile, required this.logoutProfile})
      : super(ProfileInitial()) {
    on<ProfileStarted>((event, emit) async {
      emit(ProfileInProgress());
      final failureOrProfile = await getProfile(NoParams());

      emit(failureOrProfile.fold(
        (failure) => ProfileFailure(message: mapFailureToMessage(failure)),
        (profile) {
          return ProfileSuccess(profile: profile);
        },
      ));
    });

    on<ProfileLogout>((event, emit) async {
      emit(ProfileInProgress());
      final failureOrProfile = await logoutProfile(NoParams());

      emit(failureOrProfile.fold(
        (failure) => ProfileFailure(message: mapFailureToMessage(failure)),
        (profile) {
          return ProfileToSplash();
        },
      ));
    });
  }
}
