import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/color_config.dart';

class PrimaryButton extends StatelessWidget {
  final String? label;
  final Function()? onPress;

  const PrimaryButton({Key? key, @required this.label, this.onPress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: ColorConfig.primaryColor,
        padding: EdgeInsets.all(18.0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
      child: Text(
        label ?? '',
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      onPressed: onPress,
    );
  }
}
