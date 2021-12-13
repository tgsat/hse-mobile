import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/risk_asessment/presentation/pages/risk_asessment_detail.dart';
import 'package:hse_product/features/risk_asessment/presentation/widgets/searchBar_risk_asessment.dart';
import 'package:hse_product/features/risk_asessment/presentation/widgets/item_data_risk_asessment.dart';

class RiskAsessmentPage extends StatelessWidget {
  const RiskAsessmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite(LocaleKeys.risk_asessment.tr(), context),
      body: Container(
        margin: EdgeInsets.symmetric(
            vertical: SizeConfig.marginActivity,
            horizontal: SizeConfig.marginActivity),
        child: Column(
          children: [
            SearchBarRiskAsessment(),
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
                                builder: (context) =>
                                    RiskAsessmentDetailPage()));
                      },
                      child: ItemDataRiskAsessment());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
