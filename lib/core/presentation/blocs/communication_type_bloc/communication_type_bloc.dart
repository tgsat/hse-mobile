import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'communication_type_event.dart';
part 'communication_type_state.dart';

class CommunicationTypeBloc
    extends Bloc<CommunicationTypeEvent, CommunicationTypeState> {
  CommunicationTypeBloc() : super(CommunicationTypeInitial()) {
    final List<String> _list = [
      'Bisnis Waskita',
      'CSR Waskita'
          'Pelaksana Proyek Waskita',
      'Lingkungan dan Sosial',
      'Umum',
      'Lainnya (Sebutkan)'
    ];

    String? _selected;

    on<CommunicationTypeStarted>((event, emit) {
      emit(CommunicationTypeSuccess(list: _list, selectedItem: _selected));
    });

    on<CommunicationTypeSelected>((event, emit) {
      emit(CommunicationTypeInProgress());
      _selected = event.selected;
      emit(CommunicationTypeSuccess(list: _list, selectedItem: _selected));
    });
  }
}
