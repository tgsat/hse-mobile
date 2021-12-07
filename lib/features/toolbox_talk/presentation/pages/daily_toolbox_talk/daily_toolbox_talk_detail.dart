import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/toolbox_talk/presentation/widgets/item_data_daily.dart';

class DailyToolboxTalkDetail extends StatelessWidget {
  const DailyToolboxTalkDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite(
          "Daily " "${LocaleKeys.detail_toolbox_talk.tr()}", context),
      body: Container(
          margin: EdgeInsets.symmetric(
              vertical: SizeConfig.marginActivity,
              horizontal: SizeConfig.marginActivity),
          child: Column(
            children: [ItemDataDailyToolboxTalkDetail()],
          )),
    );
  }
}
