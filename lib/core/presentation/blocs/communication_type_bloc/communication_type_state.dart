part of 'communication_type_bloc.dart';

abstract class CommunicationTypeState extends Equatable {
  const CommunicationTypeState();

  @override
  List<Object> get props => [];
}

class CommunicationTypeInitial extends CommunicationTypeState {}

class CommunicationTypeInProgress extends CommunicationTypeState {}

class CommunicationTypeSuccess extends CommunicationTypeState {
  final List<String> list;
  final String? selectedItem;

  CommunicationTypeSuccess({required this.list, required this.selectedItem});
}
