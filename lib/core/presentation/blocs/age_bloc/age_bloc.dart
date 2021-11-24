import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'age_event.dart';
part 'age_state.dart';

class AgeBloc extends Bloc<AgeEvent, AgeState> {
  AgeBloc() : super(AgeInitial()) {
    final List<String> _list = [
      '12-17',
      '18-24',
      '25-35',
      '36-45',
      '46-55',
      '56-65',
      '>65',
    ];

    String? _selected;

    on<AgeStarted>((event, emit) {
      emit(AgeSuccess(list: _list, selectedItem: _selected));
    });

    on<AgeSelected>((event, emit) {
      emit(AgeInProgress());
      _selected = event.selected;
      emit(AgeSuccess(list: _list, selectedItem: _selected));
    });
  }
}
