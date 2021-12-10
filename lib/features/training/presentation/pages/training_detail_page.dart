import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_column.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/training/presentation/widgets/item_data.dart';

class TrainingdetailPage extends StatelessWidget {
  const TrainingdetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite(LocaleKeys.detail_training.tr(), context),
      body: Container(
        margin: EdgeInsets.symmetric(
            vertical: SizeConfig.marginActivity,
            horizontal: SizeConfig.marginActivity),
        child: Column(
          children: [
            ItemDataTraining(),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: SizeConfig.marginActivity),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      itemSingleRow('Ringkasan',
                          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is'),
                      SizedBox(height: 4),
                      itemSingleRow('Materi Training',
                          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
