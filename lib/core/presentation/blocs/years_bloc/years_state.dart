part of 'years_bloc.dart';

abstract class YearsState extends Equatable {
  const YearsState();

  @override
  List<Object> get props => [];
}

class YearsInitial extends YearsState {}

class YearsInProgress extends YearsState {}

class YearsSuccess extends YearsState {
  final List<int> list;
  final int selectedItem;

  YearsSuccess({required this.list, required this.selectedItem});
}
