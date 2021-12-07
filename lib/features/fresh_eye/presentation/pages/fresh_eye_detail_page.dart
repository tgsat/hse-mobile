import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/presentation/widgets/floating_button/floating_button_approved.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/fresh_eye/presentation/widgets/item_data.dart';

class FreshEyeDetailPage extends StatefulWidget {
  const FreshEyeDetailPage({Key? key}) : super(key: key);

  @override
  _FreshEyeDetailPageState createState() => _FreshEyeDetailPageState();
}

class _FreshEyeDetailPageState extends State<FreshEyeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite(LocaleKeys.detail_fresh_eye.tr(), context),
      body: Container(
        margin: EdgeInsets.symmetric(
            vertical: SizeConfig.marginActivity,
            horizontal: SizeConfig.marginActivity),
        child: Column(
          children: [
            ItemDataFreshEye(),
          ],
        ),
      ),
      floatingActionButton: buildFloatingApproved(() {}, () {}),
    );
  }
}
