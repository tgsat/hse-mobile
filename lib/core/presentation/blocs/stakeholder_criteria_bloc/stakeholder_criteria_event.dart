part of 'stakeholder_criteria_bloc.dart';

abstract class StakeholderCriteriaEvent extends Equatable {
  const StakeholderCriteriaEvent();

  @override
  List<Object> get props => [];
}

class StakeholderCriteriaStarted extends StakeholderCriteriaEvent {}

class StakeholderCriteriaSelected extends StakeholderCriteriaEvent {
  final String selected;

  StakeholderCriteriaSelected({required this.selected});
}
