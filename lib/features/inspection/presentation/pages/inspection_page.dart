import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/inspection/presentation/pages/inspection_details.dart';
import 'package:hse_product/features/inspection/presentation/widgets/searchBar_inspection.dart';
import 'package:hse_product/features/inspection/presentation/widgets/item_data_inspection.dart';
import 'package:easy_localization/easy_localization.dart';

class InspectionPage extends StatefulWidget {
  const InspectionPage({Key? key}) : super(key: key);

  @override
  _InspectionPageState createState() => _InspectionPageState();
}

class _InspectionPageState extends State<InspectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite(LocaleKeys.inspection.tr(), context),
      body: Container(
        margin: EdgeInsets.symmetric(
            vertical: SizeConfig.marginActivity,
            horizontal: SizeConfig.marginActivity),
        child: Column(
          children: [
            SearchBarInspection(),
            SizedBox(height: 5),
            Divider(
              color: Colors.grey.shade100,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InspectionDetail()));
                      },
                      child: ItemDataInspection());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
