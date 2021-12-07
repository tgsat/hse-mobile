import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_column.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/menu_meeting/presentation/widgets/item_data.dart';

class MenuMeetingDetailPage extends StatelessWidget {
  const MenuMeetingDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite(LocaleKeys.detail_meeting.tr(), context),
      body: Container(
        margin: EdgeInsets.symmetric(
            vertical: SizeConfig.marginActivity,
            horizontal: SizeConfig.marginActivity),
        child: Column(
          children: [
            ItemDataMenuMeeting(),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      itemSingleRow('Data Rapat', '-'),
                      itemTwoColumnWithImage(
                          'Lampiran',
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/statistics.png',
                                height: 45,
                                width: 45,
                              ),
                              Image.asset(
                                'assets/images/statistics.png',
                                height: 45,
                                width: 45,
                              ),
                              Image.asset(
                                'assets/images/statistics.png',
                                height: 45,
                                width: 45,
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
