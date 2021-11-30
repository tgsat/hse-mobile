import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/color_config.dart';

appBarWhite(String title, BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Text(
      title,
      style: TextStyle(
          color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold),
    ),
    iconTheme: IconThemeData(
      color: Colors.black, //change your color here
    ),
    leading: InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: CircleAvatar(
            radius: 20,
            backgroundColor: ColorConfig.primaryColor,
            child: Center(
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            )),
      ),
    ),
  );
}
