part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginGoogleStarted extends LoginEvent {}

class LoginFacebookStarted extends LoginEvent {}

class LoginLinkedinStarted extends LoginEvent {
  final String token;

  LoginLinkedinStarted({required this.token});
}
