part of 'age_bloc.dart';

abstract class AgeState extends Equatable {
  const AgeState();

  @override
  List<Object> get props => [];
}

class AgeInitial extends AgeState {}

class AgeInProgress extends AgeState {}

class AgeSuccess extends AgeState {
  final List<String> list;
  final String? selectedItem;

  AgeSuccess({required this.list, required this.selectedItem});
}
