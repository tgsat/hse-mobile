import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/emergency_response/presentation/pages/emergency_response_detail_page.dart';
import 'package:hse_product/features/emergency_response/presentation/widgets/item_data.dart';

class EmergencyResponsePage extends StatelessWidget {
  const EmergencyResponsePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite(LocaleKeys.emergency_response.tr(), context),
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
                            builder: (context) =>
                                EmergencyResponseDetailPage()));
                  },
                  child: ItemDataEmergencyResponse(),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
