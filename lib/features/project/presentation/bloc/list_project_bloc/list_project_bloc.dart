import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hse_product/core/error/failure_to_message.dart';
import 'package:hse_product/features/project/domain/entities/data_project.dart';
import 'package:hse_product/features/project/domain/entities/list_project.dart';
import 'package:hse_product/features/project/domain/usecases/get_projects.dart';

part 'list_project_event.dart';
part 'list_project_state.dart';

class ListProjectBloc extends Bloc<ListProjectEvent, ListProjectState> {
  final GetProjects getProject;
  ListProjectBloc({required this.getProject}) : super(ListProjectInitial()) {
    ListProject _response = new ListProject();
    List<DataProject> _listData = [];

    on<ListProjectStarted>((event, emit) async {
      emit(ListProjectInProgress());
      final failureOrData = await getProject(Params());

      emit(failureOrData.fold(
        (failure) => ListProjectFailure(message: mapFailureToMessage(failure)),
        (response) {
          if (response.data != null) {
            if (response.data!.isNotEmpty) {
              //Store to local var
              response.data!.forEach((data) {
                _listData.add(data);
              });

              _response = response;
              return ListProjectSuccess(
                  listProject: _response, isLoadMore: false);
            } else {
              return ListProjectEmpty();
            }
          } else {
            return ListProjectEmpty();
          }
        },
      ));
    });

    on<ListProjectNext>((event, emit) async {
      emit(ListProjectInProgress());
      emit(ListProjectSuccess(listProject: _response, isLoadMore: true));
      final failureOrData = await getProject(Params(url: event.url));

      emit(failureOrData.fold(
        (failure) => ListProjectFailure(message: mapFailureToMessage(failure)),
        (response) {
          if (response.data != null) {
            if (response.data!.isNotEmpty) {
              _listData.addAll(response.data!);
              response.data = _listData;
              _response = response;
              return ListProjectSuccess(
                  listProject: response, isLoadMore: false);
            } else {
              return ListProjectEmpty();
            }
          } else {
            return ListProjectEmpty();
          }
        },
      ));
    });
  }
}
