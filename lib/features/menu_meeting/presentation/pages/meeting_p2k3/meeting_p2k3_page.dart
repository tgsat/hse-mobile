import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/menu_meeting/presentation/pages/meeting_detail_page.dart';
import 'package:hse_product/features/menu_meeting/presentation/widgets/item_data.dart';
import 'package:hse_product/features/menu_meeting/presentation/widgets/searchBar_meeting.dart';

class MeetingP2k3Page extends StatelessWidget {
  const MeetingP2k3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: SizeConfig.marginActivity,
          horizontal: SizeConfig.marginActivity),
      child: Column(
        children: [
          SearchBarMeeting(),
          SizedBox(height: 10),
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
                  }))
        ],
      ),
    );
  }
}
