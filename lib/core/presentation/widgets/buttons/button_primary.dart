import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/color_config.dart';

class PrimaryButton extends StatelessWidget {
  final String? label;
  final Color? iColor;
  final Color? backgroundColor;
  final Function()? onPress;

  const PrimaryButton({
    Key? key,
    @required this.label,
    this.iColor,
    this.backgroundColor,
    this.onPress,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Colors.white,
        backgroundColor: backgroundColor ?? ColorConfig.primaryColor,
        padding: EdgeInsets.all(18.0),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
      child: Text(
        label ?? '',
        style:
            Theme.of(context).textTheme.headline6!.apply(color: Colors.white),
      ),
      onPressed: onPress,
    );
  }
}
