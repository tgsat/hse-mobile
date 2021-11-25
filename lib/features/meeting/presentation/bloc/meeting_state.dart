part of 'meeting_bloc.dart';

abstract class MeetingState extends Equatable {
  const MeetingState();  

  @override
  List<Object> get props => [];
}
class MeetingInitial extends MeetingState {}
