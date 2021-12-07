import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hse_product/core/utils/values/color_config.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/work_permit/presentation/widgets/item_data.dart';

class WorkPermitdetailPage extends StatelessWidget {
  const WorkPermitdetailPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite(LocaleKeys.detail_work_permit.tr(), context),
      body: Container(
        margin: EdgeInsets.symmetric(
            vertical: SizeConfig.marginActivity,
            horizontal: SizeConfig.marginActivity),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ItemDataWorkPermit(),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      ExpansionTile(
                        title: Text('PERMIT REQUEST',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .apply(color: ColorConfig.primaryColor)),
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: Text(
                                'Is Lorem Ipsum real? Hasil gambar untuk flutter text lorem ipsum Lorem Ipsum was originally taken from a Latin text by the Roman philosopher Cicero. But it has gone through significant changes over the centuries, with words being taken out, shortened, and added in. The word '
                                'lorem'
                                ', for example, isnt a real Latin word, its a shortened version of the word '
                                'dolorem'
                                ', meaning pain.'),
                          )
                        ],
                      ),
                      ExpansionTile(
                        title: Text('TYPE OF PERMIT',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .apply(color: ColorConfig.primaryColor)),
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: Text(
                                'Is Lorem Ipsum real? Hasil gambar untuk flutter text lorem ipsum Lorem Ipsum was originally taken from a Latin text by the Roman philosopher Cicero. But it has gone through significant changes over the centuries, with words being taken out, shortened, and added in. The word '
                                'lorem'
                                ', for example, isnt a real Latin word, its a shortened version of the word '
                                'dolorem'
                                ', meaning pain.'),
                          )
                        ],
                      ),
                      ExpansionTile(
                        title: Text('LAMPIRAN',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .apply(color: ColorConfig.primaryColor)),
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: Text(
                                'Is Lorem Ipsum real? Hasil gambar untuk flutter text lorem ipsum Lorem Ipsum was originally taken from a Latin text by the Roman philosopher Cicero. But it has gone through significant changes over the centuries, with words being taken out, shortened, and added in. The word '
                                'lorem'
                                ', for example, isnt a real Latin word, its a shortened version of the word '
                                'dolorem'
                                ', meaning pain.'),
                          )
                        ],
                      ),
                    ],
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
