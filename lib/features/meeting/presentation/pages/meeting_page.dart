import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_primary.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/features/meeting/presentation/widgets/meeting_body.dart';

class MeetingPage extends StatefulWidget {
  const MeetingPage({Key? key}) : super(key: key);

  @override
  _MeetingPageState createState() => _MeetingPageState();
}

class _MeetingPageState extends State<MeetingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarPrimary(context, title: Dictionary.meeting),
      body: MeetingBody(),
    );
  }
}
