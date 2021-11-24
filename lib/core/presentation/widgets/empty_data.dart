import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';

class EmptyDataPage extends StatelessWidget {
  const EmptyDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/ilus_empty.png',
              width: SizeConfig.maxWidth(context) * 0.6,
            ),
            SizedBox(height: SizeConfig.marginForm),
            Text(Dictionary.desc_empty_data),
          ],
        ),
      ),
    );
  }
}
