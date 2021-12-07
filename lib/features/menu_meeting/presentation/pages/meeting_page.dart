import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/menu_meeting/presentation/pages/meeting_detail_page.dart';
import 'package:hse_product/features/menu_meeting/presentation/widgets/item_data.dart';

class MenuMeetingPage extends StatelessWidget {
  const MenuMeetingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite(LocaleKeys.meeting.tr(), context),
      body: Container(
        margin: EdgeInsets.symmetric(
            vertical: SizeConfig.marginActivity,
            horizontal: SizeConfig.marginActivity),
        child: Column(
          children: [
            SizedBox(height: 10.0),
            Divider(color: Colors.grey.shade100),
            Expanded(
                child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MenuMeetingDetailPage()));
                  },
                  child: ItemDataMenuMeeting(),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
