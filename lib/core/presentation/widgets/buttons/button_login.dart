import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/size_config.dart';

class ButtonLogin extends StatelessWidget {
  final String? iconAssets;
  final String? label;
  final Function()? onPress;

  const ButtonLogin({
    Key? key,
    required this.iconAssets,
    required this.label,
    this.onPress,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPress,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
      ),
      child: Padding(
        padding: EdgeInsets.all(4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(iconAssets ?? '', fit: BoxFit.cover),
            ),
            SizedBox(width: 10),
            Text(label ?? '',
                style: TextStyle(fontSize: SizeConfig.textSizeSmall)),
          ],
        ),
      ),
    );
  }
}
