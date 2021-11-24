part of 'project_bloc.dart';

abstract class ProjectState extends Equatable {
  const ProjectState();

  @override
  List<Object> get props => [];
}

class ProjectInitial extends ProjectState {}

class ProjectInProgress extends ProjectState {}

class ProjectFailure extends ProjectState {
  final String message;

  ProjectFailure({required this.message});
}

class ProjectSuccess extends ProjectState {}
