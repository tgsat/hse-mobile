import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'stakeholder_criteria_event.dart';
part 'stakeholder_criteria_state.dart';

class StakeholderCriteriaBloc
    extends Bloc<StakeholderCriteriaEvent, StakeholderCriteriaState> {
  StakeholderCriteriaBloc() : super(StakeholderCriteriaInitial()) {
    final List<String> _list = [
      'Instansi Pemerintah',
      'Badan Usaha',
      'Media',
      'Masyarakat Umum',
      'Insan Waskita',
      'Lainnya (Sebutkan)'
    ];

    String? _selected;

    on<StakeholderCriteriaStarted>((event, emit) {
      emit(StakeholderCriteriaSuccess(list: _list, selectedItem: _selected));
    });

    on<StakeholderCriteriaSelected>((event, emit) {
      emit(StakeholderCriteriaInProgress());
      _selected = event.selected;
      emit(StakeholderCriteriaSuccess(list: _list, selectedItem: _selected));
    });
  }
}
