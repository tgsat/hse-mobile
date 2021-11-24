part of 'month_bloc.dart';

abstract class MonthEvent extends Equatable {
  const MonthEvent();

  @override
  List<Object> get props => [];
}

class MonthStarted extends MonthEvent {}

class MonthSelected extends MonthEvent {
  final String selected;

  MonthSelected({required this.selected});
}
