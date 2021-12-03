import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/presentation/widgets/floating_button/floating_button_approved.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/risk_asessment/presentation/widgets/item_data_risk_asessment.dart';
import 'package:easy_localization/easy_localization.dart';

class RiskAsessmentDetailPage extends StatefulWidget {
  const RiskAsessmentDetailPage({Key? key}) : super(key: key);

  @override
  _RiskAsessmentDetailPageState createState() =>
      _RiskAsessmentDetailPageState();
}

class _RiskAsessmentDetailPageState extends State<RiskAsessmentDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarWhite(LocaleKeys.detail_risk_asessment.tr(), context),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: SizeConfig.marginForm),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ItemDataRiskAsessment(),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Container(
                      height: 200,
                      padding: EdgeInsets.all(5.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: buildFloatingApproved(() {
          print('close');
        }, () {
          print('approved');
        }));
  }
}
