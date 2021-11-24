part of 'age_bloc.dart';

abstract class AgeEvent extends Equatable {
  const AgeEvent();

  @override
  List<Object> get props => [];
}

class AgeStarted extends AgeEvent {}

class AgeSelected extends AgeEvent {
  final String selected;

  AgeSelected({required this.selected});
}
