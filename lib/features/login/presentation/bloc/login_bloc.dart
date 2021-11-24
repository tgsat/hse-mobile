import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hse_product/core/domain/usecases/usecase.dart';
import 'package:hse_product/core/error/failure_to_message.dart';
import 'package:hse_product/features/login/domain/usecases/login_facebook.dart';
import 'package:hse_product/features/login/domain/usecases/login_google.dart';
import 'package:hse_product/features/login/domain/usecases/login_linkedin.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginGoogle loginGoogle;
  LoginFacebook loginFacebook;
  LoginLinkedin loginLinkedin;

  LoginBloc({
    required this.loginGoogle,
    required this.loginFacebook,
    required this.loginLinkedin,
  }) : super(LoginInitial()) {
    on<LoginGoogleStarted>((event, emit) async {
      final failureOrLogin = await loginGoogle(NoParams());

      emit(failureOrLogin.fold(
        (failure) => LoginFailure(message: mapFailureToMessage(failure)),
        (success) {
          return LoginSuccess();
        },
      ));
    });

    on<LoginFacebookStarted>((event, emit) async {
      final failureOrLogin = await loginFacebook(NoParams());

      emit(failureOrLogin.fold(
        (failure) => LoginFailure(message: mapFailureToMessage(failure)),
        (success) {
          return LoginSuccess();
        },
      ));
    });

    on<LoginLinkedinStarted>((event, emit) async {
      final failureOrLogin = await loginLinkedin(Params(token: event.token));

      emit(failureOrLogin.fold(
        (failure) => LoginFailure(message: mapFailureToMessage(failure)),
        (success) {
          print('email: ${success.data?.email ?? ''}');
          return LoginSuccess();
        },
      ));
    });
  }
}
