import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hse_product/core/domain/usecases/get_profile_common.dart';
import 'package:hse_product/core/domain/usecases/usecase.dart';
import 'package:hse_product/core/error/failure_to_message.dart';

part 'email_event.dart';
part 'email_state.dart';

class EmailBloc extends Bloc<EmailEvent, EmailState> {
  final GetProfileCommon getProfile;

  EmailBloc({required this.getProfile}) : super(EmailInitial()) {
    on<EmailStarted>((event, emit) async {
      emit(EmailInProgress());
      final failureOrProfile = await getProfile(NoParams());

      emit(failureOrProfile.fold(
        (failure) => EmailFailure(message: mapFailureToMessage(failure)),
        (profile) {
          return EmailSuccess(email: profile.email ?? '');
        },
      ));
    });
  }
}
