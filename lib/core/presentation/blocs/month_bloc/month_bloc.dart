import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'month_event.dart';
part 'month_state.dart';

class MonthBloc extends Bloc<MonthEvent, MonthState> {
  MonthBloc() : super(MonthInitial()) {
    List<String> _list = [
      'All',
      'Januari',
      'Februari',
      'Maret',
      'April',
      'Mei',
      'Juni',
      'Juli',
      'Agustus',
      'September',
      'Oktober',
      'November',
      'Desember'
    ];

    List<String> _listCode = [
      '',
      '01',
      '02',
      '03',
      '04',
      '05',
      '06',
      '07',
      '08',
      '09',
      '10',
      '11',
      '12'
    ];

    String _selected;
    String _selectedCode;

    on<MonthStarted>((event, emit) {
      emit(MonthInProgress());
      _selected = _list[DateTime.now().month];
      _selectedCode = _listCode[DateTime.now().month];

      emit(MonthSuccess(
          list: _list, selectedItem: _selected, selectedCode: _selectedCode));
    });

    on<MonthSelected>((event, emit) {
      emit(MonthInProgress());
      _selected = event.selected;
      _selectedCode = _listCode[_list.indexOf(_selected)];
      emit(MonthSuccess(
          list: _list, selectedItem: _selected, selectedCode: _selectedCode));
    });
  }
}
