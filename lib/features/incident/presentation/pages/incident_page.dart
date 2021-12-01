import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';

class IncidentPage extends StatelessWidget {
  const IncidentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite(Dictionary.incident, context),
      body: Container(
        margin: EdgeInsets.symmetric(
          vertical: SizeConfig.marginActivity,
          horizontal: SizeConfig.marginActivity,
        ),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
