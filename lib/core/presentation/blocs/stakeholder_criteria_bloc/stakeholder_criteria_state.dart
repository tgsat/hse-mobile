part of 'stakeholder_criteria_bloc.dart';

abstract class StakeholderCriteriaState extends Equatable {
  const StakeholderCriteriaState();

  @override
  List<Object> get props => [];
}

class StakeholderCriteriaInitial extends StakeholderCriteriaState {}

class StakeholderCriteriaInProgress extends StakeholderCriteriaState {}

class StakeholderCriteriaSuccess extends StakeholderCriteriaState {
  final List<String> list;
  final String? selectedItem;

  StakeholderCriteriaSuccess({required this.list, required this.selectedItem});
}
