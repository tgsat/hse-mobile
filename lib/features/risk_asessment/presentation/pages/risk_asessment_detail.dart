import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/presentation/widgets/floating_button/floating_button_approved.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:hse_product/core/utils/values/color_config.dart';
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
                      borderRadius: BorderRadius.circular(5)),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        ExpansionTile(
                          title: Text('Identifikasi Resiko',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .apply(color: ColorConfig.primaryColor)),
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: SizeConfig.marginActivity),
                              child: Column(
                                children: [
                                  Text(
                                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is')
                                ],
                              ),
                            )
                          ],
                        ),
                        ExpansionTile(
                          title: Text('Penilaian Resiko',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .apply(color: ColorConfig.primaryColor)),
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: SizeConfig.marginActivity),
                              child: Column(
                                children: [
                                  Text(
                                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is')
                                ],
                              ),
                            )
                          ],
                        ),
                        ExpansionTile(
                          title: Text('Pengendalian Resiko',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .apply(color: ColorConfig.primaryColor)),
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: SizeConfig.marginActivity),
                              child: Column(
                                children: [
                                  Text(
                                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is')
                                ],
                              ),
                            )
                          ],
                        ),
                        ExpansionTile(
                          title: Text('Tinjauan Ulang',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .apply(color: ColorConfig.primaryColor)),
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: SizeConfig.marginActivity),
                              child: Column(
                                children: [
                                  Text(
                                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is')
                                ],
                              ),
                            )
                          ],
                        ),
                        ExpansionTile(
                          title: Text('Komunikasi & Konsultasi',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .apply(color: ColorConfig.primaryColor)),
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: SizeConfig.marginActivity),
                              child: Column(
                                children: [
                                  Text(
                                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is')
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
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
