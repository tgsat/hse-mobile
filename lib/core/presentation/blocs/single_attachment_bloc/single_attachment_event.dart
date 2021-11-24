part of 'single_attachment_bloc.dart';

abstract class SingleAttachmentEvent extends Equatable {
  const SingleAttachmentEvent();

  @override
  List<Object> get props => [];
}

class SingleAttachmentStarted extends SingleAttachmentEvent {
  final List<String>? allowedExtensions;

  SingleAttachmentStarted({this.allowedExtensions});
}
