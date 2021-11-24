part of 'years_bloc.dart';

abstract class YearsEvent extends Equatable {
  const YearsEvent();

  @override
  List<Object> get props => [];
}

class YearsStarted extends YearsEvent {}

class YearsSelected extends YearsEvent {
  final int selected;

  YearsSelected({required this.selected});
}
