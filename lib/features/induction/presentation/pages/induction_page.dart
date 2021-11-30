import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:hse_product/features/induction/presentation/widgets/induction_body.dart';
import 'package:easy_localization/easy_localization.dart';

class InductionPage extends StatelessWidget {
  const InductionPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite(LocaleKeys.induction.tr(), context),
      body: InductionBody(),
    );
  }
}