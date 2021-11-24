part of 'splash_bloc.dart';

abstract class SplashState extends Equatable {
  const SplashState();

  @override
  List<Object> get props => [];
}

class SplashInitial extends SplashState {}

class SplashInProgress extends SplashState {}

class SplashToLogin extends SplashState {}

class SplashToDashboard extends SplashState {}
