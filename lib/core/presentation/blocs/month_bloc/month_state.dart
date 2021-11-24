part of 'month_bloc.dart';

abstract class MonthState extends Equatable {
  const MonthState();

  @override
  List<Object> get props => [];
}

class MonthInitial extends MonthState {}

class MonthInProgress extends MonthState {}

class MonthSuccess extends MonthState {
  final List<String> list;
  final String selectedItem;
  final String selectedCode;

  MonthSuccess(
      {required this.list,
      required this.selectedItem,
      required this.selectedCode});
}
