import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'induction_event.dart';
part 'induction_state.dart';

class InductionBloc extends Bloc<InductionEvent, InductionState> {
  InductionBloc() : super(InductionInitial()) {
    on<InductionEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
