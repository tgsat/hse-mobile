import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/hse_plan/presentation/pages/hse_plan_details.dart';
import 'package:hse_product/features/hse_plan/presentation/widgets/combo_filter.dart';
import 'package:hse_product/features/hse_plan/presentation/widgets/item_hse_plan.dart';
import 'package:easy_localization/easy_localization.dart';

class HSEPlanPage extends StatelessWidget {
  const HSEPlanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: appBarWhite(LocaleKeys.hse_plan.tr(), context),
        body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: SizeConfig.marginActivity,
              vertical: SizeConfig.marginActivity),
          child: Column(
            children: [
              ComboFilterHSEPlan(),
              SizedBox(height: 10.0),
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
                                  builder: (context) => HSEPlanDetail()));
                        },
                        child: ItemHSEPlan());
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
