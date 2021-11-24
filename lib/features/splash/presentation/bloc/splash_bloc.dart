import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hse_product/core/domain/usecases/usecase.dart';
import 'package:hse_product/features/splash/domain/usecases/splash_login_check.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final SplashLoginCheck splashLoginCheck;

  SplashBloc({required this.splashLoginCheck}) : super(SplashInitial()) {
    on<SplashStarted>((event, emit) async {
      await Future.delayed(Duration(seconds: 1));
      final failureOrSuccess = await splashLoginCheck(NoParams());

      emit(failureOrSuccess.fold(
        (failure) => SplashToLogin(),
        (success) {
          if (success)
            return SplashToDashboard();
          else
            return SplashToLogin();
        },
      ));
    });
  }
}
