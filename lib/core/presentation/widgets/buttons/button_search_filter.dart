import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/color_config.dart';

class ButtonSearchFilter extends StatelessWidget {
  const ButtonSearchFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13.0),
      decoration: BoxDecoration(
        color: ColorConfig.primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Center(child: Icon(Icons.search, color: Colors.white)),
    );
  }
}
