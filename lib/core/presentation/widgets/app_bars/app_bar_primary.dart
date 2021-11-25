import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/color_config.dart';
import 'package:hse_product/core/utils/values/size_config.dart';

appBarPrimary(BuildContext context, {required String title}) {
  return AppBar(
    iconTheme: IconThemeData(
      color: ColorConfig.primaryColor,
    ),
    title: Text(
      title,
      style: Theme.of(context).textTheme.headline6,
    ),
    backgroundColor: Colors.white,
    elevation: 1,
    actions: [
      Container(
        margin: EdgeInsets.only(right: SizeConfig.marginActivity),
        child: Image.asset(
          'assets/images/logo_qhse.png',
          width: 40,
        ),
      )
    ],
    // centerTitle: true,
  );
}
