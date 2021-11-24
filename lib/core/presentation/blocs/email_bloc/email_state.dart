part of 'email_bloc.dart';

abstract class EmailState extends Equatable {
  const EmailState();

  @override
  List<Object> get props => [];
}

class EmailInitial extends EmailState {}

class EmailFailure extends EmailState {
  final String message;

  EmailFailure({required this.message});
}

class EmailInProgress extends EmailState {}

class EmailSuccess extends EmailState {
  final String email;
  EmailSuccess({required this.email});
}
