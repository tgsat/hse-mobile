part of 'communication_type_bloc.dart';

abstract class CommunicationTypeEvent extends Equatable {
  const CommunicationTypeEvent();

  @override
  List<Object> get props => [];
}

class CommunicationTypeStarted extends CommunicationTypeEvent {}

class CommunicationTypeSelected extends CommunicationTypeEvent {
  final String selected;

  CommunicationTypeSelected({required this.selected});
}
