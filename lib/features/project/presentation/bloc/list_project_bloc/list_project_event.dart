part of 'list_project_bloc.dart';

abstract class ListProjectEvent extends Equatable {
  const ListProjectEvent();

  @override
  List<Object> get props => [];
}

class ListProjectStarted extends ListProjectEvent {}

class ListProjectNext extends ListProjectEvent {
  final String url;

  ListProjectNext({required this.url});
}
