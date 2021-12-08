import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hse_product/core/utils/values/color_config.dart';
import 'package:hse_product/features/menu_meeting/presentation/pages/meeting_hse/meeting_hse_page.dart';
import 'package:hse_product/features/menu_meeting/presentation/pages/meeting_p2k3/meeting_p2k3_page.dart';

class MenuMeetingPage extends StatelessWidget {
  const MenuMeetingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text(
              LocaleKeys.meeting.tr(),
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .apply(color: Colors.black),
            ),
            iconTheme: IconThemeData(
              color: Colors.black, //change your color here
            ),
            leading: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                    radius: 20,
                    backgroundColor: ColorConfig.primaryColor,
                    child: Center(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    )),
              ),
            ),
            bottom: TabBar(
              indicatorColor: ColorConfig.primaryColor,
              tabs: [
                Tab(icon: itemText(LocaleKeys.meeting.tr() + " HSE", context)),
                Tab(icon: itemText(LocaleKeys.meeting.tr() + " P2K3", context)),
              ],
            ),
          ),
          body: TabBarView(children: [MeetingHSEPage(), MeetingP2k3Page()]),
        ));
  }

  itemText(String text, BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .subtitle2!
          .apply(color: ColorConfig.primaryColor),
    );
  }
}
