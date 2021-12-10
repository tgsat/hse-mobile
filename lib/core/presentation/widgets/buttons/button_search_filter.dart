import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/color_config.dart';

class ButtonSearchFilter extends StatelessWidget {
  const ButtonSearchFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: ColorConfig.primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)]),
        child: Icon(Icons.search, size: 20, color: Colors.white));
  }
}
