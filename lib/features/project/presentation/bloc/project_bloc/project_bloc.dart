import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hse_product/core/error/failure_to_message.dart';
import 'package:hse_product/features/project/domain/usecases/post_project.dart';

part 'project_event.dart';
part 'project_state.dart';

class ProjectBloc extends Bloc<ProjectEvent, ProjectState> {
  final PostProject postProject;
  ProjectBloc({required this.postProject}) : super(ProjectInitial()) {
    on<ProjectStarted>((event, emit) async {
      emit(ProjectInProgress());
      final failureOrProject = await postProject(
        Params(
          projectName: event.projectName,
          location: event.location,
          projectType: event.projectType,
          date: event.date,
          name: event.name,
          hp: event.hp,
          email: event.email,
          other: event.other,
          file: event.file,
        ),
      );

      emit(failureOrProject.fold(
        (failure) => ProjectFailure(message: mapFailureToMessage(failure)),
        (success) => ProjectSuccess(),
      ));
    });

    on<ProjectRestarted>((event, emit) async {
      emit(ProjectInProgress());
      emit(ProjectInitial());
    });
  }
}
