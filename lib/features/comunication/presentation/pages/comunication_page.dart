import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/comunication/presentation/pages/comunication_detail.dart';
import 'package:hse_product/features/comunication/presentation/widgets/combo_filter.dart';
import 'package:hse_product/features/comunication/presentation/widgets/item_comunication.dart';

class ComunicationPage extends StatefulWidget {
  const ComunicationPage({Key? key}) : super(key: key);

  @override
  _ComunicationPageState createState() => _ComunicationPageState();
}

class _ComunicationPageState extends State<ComunicationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite(Dictionary.comunication, context),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: SizeConfig.marginActivity,
            vertical: SizeConfig.marginActivity),
        child: Column(
          children: [
            ComboFilterComunication(),
            SizedBox(height: 10.0),
            Divider(color: Colors.grey.shade100),
            Expanded(
              child: ListView.builder(
                itemCount: 12,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ComunicationDetail()));
                      },
                      child: ItemComunication());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
