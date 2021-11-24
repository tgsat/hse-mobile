part of 'single_attachment_bloc.dart';

abstract class SingleAttachmentState extends Equatable {
  const SingleAttachmentState();

  @override
  List<Object> get props => [];
}

class SingleAttachmentInitial extends SingleAttachmentState {}

class SingleAttachmentInProgress extends SingleAttachmentState {}

class SingleAttachmentFailure extends SingleAttachmentState {}

class SingleAttachmentSuccess extends SingleAttachmentState {
  final File fileUpload;

  SingleAttachmentSuccess(this.fileUpload);
}
