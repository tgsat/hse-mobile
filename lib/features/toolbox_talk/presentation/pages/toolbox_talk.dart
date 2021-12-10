import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:hse_product/core/utils/values/color_config.dart';
import 'package:hse_product/features/toolbox_talk/presentation/pages/daily_toolbox_talk/daily_toolbox_talk_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hse_product/features/toolbox_talk/presentation/pages/weekly_toolbox_talk/weekly_toolbox_talk_page.dart';

class ToolboxTalkPage extends StatelessWidget {
  const ToolboxTalkPage({Key? key}) : super(key: key);

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
              LocaleKeys.toolbox_talk.tr(),
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
                Tab(
                    child: itemText(
                        "Daily " "${LocaleKeys.toolbox_talk.tr()}", context)),
                Tab(
                    child: itemText(
                        "Weekly " "${LocaleKeys.toolbox_talk.tr()}", context)),
              ],
            ),
          ),
          body: TabBarView(
              children: [DailyToolboxTalkPage(), WeeklyToolboxTalkPage()]),
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
