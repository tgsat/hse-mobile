import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/color_config.dart';

class ButtonLogin extends StatelessWidget {
  // final String iconAssets;
  final String? label;
  final Function()? onPress;

  const ButtonLogin({
    Key? key,
    // required this.iconAssets,
    required this.label,
    this.onPress,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: TextButton.styleFrom(
        primary: ColorConfig.primaryColor,
        backgroundColor: ColorConfig.scaffoldColor,
        padding: EdgeInsets.all(18.0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(100.0)),
        ),
      ),
      // icon: Image.asset(iconAssets),
      icon: Image.asset(''),
      label: Text(
        label ?? '',
        style: TextStyle(fontSize: 15),
      ),
      onPressed: onPress,
    );
  }
}
