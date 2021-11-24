import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:file_picker/file_picker.dart';

part 'single_attachment_event.dart';
part 'single_attachment_state.dart';

class SingleAttachmentBloc
    extends Bloc<SingleAttachmentEvent, SingleAttachmentState> {
  SingleAttachmentBloc() : super(SingleAttachmentInitial()) {
    on<SingleAttachmentStarted>((event, emit) async {
      try {
        if (event is SingleAttachmentStarted) {
          emit(SingleAttachmentInProgress());
          FilePickerResult? _result = await FilePicker.platform.pickFiles(
            type: FileType.custom,
            allowedExtensions:
                event.allowedExtensions ?? ['jpg', 'pdf', 'doc', 'mp4'],
          );

          if (_result != null) {
            File _file = File(_result.files.single.path!);
            emit(SingleAttachmentSuccess(_file));
          } else {
            emit(SingleAttachmentFailure());
          }
        }
      } on Error {
        emit(SingleAttachmentFailure());
      }
    });
  }
}
