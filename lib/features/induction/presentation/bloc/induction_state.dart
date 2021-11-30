part of 'induction_bloc.dart';

abstract class InductionState extends Equatable {
  const InductionState();  

  @override
  List<Object> get props => [];
}
class InductionInitial extends InductionState {}
