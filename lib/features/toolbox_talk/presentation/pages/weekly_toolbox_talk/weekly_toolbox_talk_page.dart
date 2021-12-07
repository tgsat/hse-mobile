import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/toolbox_talk/presentation/pages/weekly_toolbox_talk/weekly_toolbox_talk_detail.dart';
import 'package:hse_product/features/toolbox_talk/presentation/widgets/item_data_weekly.dart';

class WeeklyToolboxTalkPage extends StatelessWidget {
  const WeeklyToolboxTalkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                          builder: (context) => WeeklyToolboxTalkDetail()));
                },
                child: ItemDataWeeklyToolboxTalk(),
              );
            },
          ))
        ],
      ),
    );
  }
}
