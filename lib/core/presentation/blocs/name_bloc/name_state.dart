part of 'name_bloc.dart';

abstract class NameState extends Equatable {
  const NameState();

  @override
  List<Object> get props => [];
}

class NameInitial extends NameState {}

class NameFailure extends NameState {
  final String message;

  NameFailure({required this.message});
}

class NameInProgress extends NameState {}

class NameSuccess extends NameState {
  final String name;
  NameSuccess({required this.name});
}
