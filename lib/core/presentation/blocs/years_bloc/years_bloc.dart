import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'years_event.dart';
part 'years_state.dart';

class YearsBloc extends Bloc<YearsEvent, YearsState> {
  YearsBloc() : super(YearsInitial()) {
    List<int> _list = [];
    int _selected;

    on<YearsStarted>((event, emit) {
      int _now = DateTime.now().year;
      _selected = _now;
      for (int i = _now - 5; i < _now + 5; i++) {
        _list.add(i);
      }

      emit(YearsSuccess(list: _list, selectedItem: _selected));
    });

    on<YearsSelected>((event, emit) {
      emit(YearsInProgress());
      _selected = event.selected;
      emit(YearsSuccess(list: _list, selectedItem: _selected));
    });
  }
}
