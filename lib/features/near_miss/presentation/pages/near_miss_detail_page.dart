import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/presentation/widgets/floating_button/floating_button_approved.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_column.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class NearMissDetailpage extends StatelessWidget {
  const NearMissDetailpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite(LocaleKeys.detail_near_miss.tr(), context),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        itemSingleRow('Data Kejadian', 'Data Kejadian'),
                        SizedBox(height: 4),
                        itemSingleRow('Investigasi', 'Investigasi'),
                        SizedBox(height: 4),
                        itemSingleRow('Penyebab', 'Penyebab'),
                        SizedBox(height: 4),
                        itemSingleRow('Tindak Lanjut', 'Tindak Lanjut'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: buildFloatingApproved(() {}, () {}),
    );
  }
}
