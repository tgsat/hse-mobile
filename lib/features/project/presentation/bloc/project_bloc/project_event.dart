part of 'project_bloc.dart';

abstract class ProjectEvent extends Equatable {
  const ProjectEvent();

  @override
  List<Object> get props => [];
}

class ProjectStarted extends ProjectEvent {
  final String projectName;
  final String location;
  final String projectType;
  final String date;
  final String name;
  final String hp;
  final String email;
  final String other;
  final File file;

  ProjectStarted({
    required this.projectName,
    required this.location,
    required this.projectType,
    required this.date,
    required this.name,
    required this.hp,
    required this.email,
    required this.other,
    required this.file,
  });
}

class ProjectRestarted extends ProjectEvent {}
