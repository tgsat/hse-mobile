part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

class ProfileInitial extends ProfileState {}

class ProfileInProgress extends ProfileState {}

class ProfileSuccess extends ProfileState {
  final DataLogin profile;

  ProfileSuccess({required this.profile});
}

class ProfileFailure extends ProfileState {
  final String message;

  ProfileFailure({required this.message});
}

class ProfileToSplash extends ProfileState {}
