import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/fresh_eye/presentation/pages/fresh_eye_detail_page.dart';
import 'package:hse_product/features/fresh_eye/presentation/widgets/item_data.dart';

class FreshEyePage extends StatelessWidget {
  const FreshEyePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite(LocaleKeys.fresh_eye.tr(), context),
      body: Container(
        margin: EdgeInsets.symmetric(
          vertical: SizeConfig.marginActivity,
          horizontal: SizeConfig.marginActivity,
        ),
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
                              builder: (context) => FreshEyeDetailPage()));
                    },
                    child: ItemDataFreshEye(),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
