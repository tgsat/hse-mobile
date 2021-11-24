import 'package:flutter/cupertino.dart';

class DialogGeneral extends StatelessWidget {
  final String? title;
  final Widget content;
  final List<Widget> actions;

  const DialogGeneral(
      {Key? key, this.title, required this.content, required this.actions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (title != null)
      return CupertinoAlertDialog(
        title: Center(child: Text(title ?? '')),
        content: SingleChildScrollView(child: content),
        actions: actions,
      );
    else
      return CupertinoAlertDialog(
        content: SingleChildScrollView(child: content),
        actions: actions,
      );
  }
}
