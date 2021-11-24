import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hse_product/core/domain/usecases/get_profile_common.dart';
import 'package:hse_product/core/domain/usecases/usecase.dart';
import 'package:hse_product/core/error/failure_to_message.dart';

part 'name_event.dart';
part 'name_state.dart';

class NameBloc extends Bloc<NameEvent, NameState> {
  final GetProfileCommon getProfile;
  NameBloc({required this.getProfile}) : super(NameInitial()) {
    on<NameStarted>((event, emit) async {
      emit(NameInProgress());
      final failureOrProfile = await getProfile(NoParams());

      emit(failureOrProfile.fold(
        (failure) => NameFailure(message: mapFailureToMessage(failure)),
        (profile) {
          return NameSuccess(name: profile.name ?? '');
        },
      ));
    });
  }
}
