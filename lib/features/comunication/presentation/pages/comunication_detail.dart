import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/comunication/presentation/widgets/item_comunication.dart';

class ComunicationDetail extends StatefulWidget {
  const ComunicationDetail({Key? key}) : super(key: key);

  @override
  _ComunicationDetailState createState() => _ComunicationDetailState();
}

class _ComunicationDetailState extends State<ComunicationDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite(LocaleKeys.detail_communication.tr(), context),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: SizeConfig.marginForm),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ItemComunication(),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Container(
                    height: 200,
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.marginActivity),
                    child: Column(
                      children: <Widget>[
                        //
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
