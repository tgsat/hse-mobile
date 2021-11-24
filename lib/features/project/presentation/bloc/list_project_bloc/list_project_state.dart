part of 'list_project_bloc.dart';

abstract class ListProjectState extends Equatable {
  const ListProjectState();

  @override
  List<Object> get props => [];
}

class ListProjectInitial extends ListProjectState {}

class ListProjectInProgress extends ListProjectState {}

class ListProjectFailure extends ListProjectState {
  final String message;

  ListProjectFailure({required this.message});
}

class ListProjectSuccess extends ListProjectState {
  final ListProject listProject;
  final bool isLoadMore;

  ListProjectSuccess({required this.listProject, required this.isLoadMore});
}

class ListProjectEmpty extends ListProjectState {}
