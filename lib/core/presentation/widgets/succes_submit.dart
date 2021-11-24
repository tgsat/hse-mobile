import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/buttons/button_primary.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';

class SuccessSubmit extends StatelessWidget {
  final Function() onPressed;
  const SuccessSubmit({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            'assets/images/ilus_check.png',
            width: SizeConfig.maxWidth(context) * 0.6,
          ),
          SizedBox(height: SizeConfig.marginForm),
          Text(Dictionary.desc_success_submit),
          SizedBox(height: SizeConfig.marginForm),
          PrimaryButton(
            label: Dictionary.input_kembali,
            onPress: onPressed,
          )
        ],
      ),
    );
  }
}
