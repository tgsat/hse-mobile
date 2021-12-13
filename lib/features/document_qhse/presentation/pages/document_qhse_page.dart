import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/document_qhse/presentation/pages/document_qhse_detail.dart';
import 'package:hse_product/features/document_qhse/presentation/widgets/item_document_qhse.dart';
import 'package:hse_product/features/document_qhse/presentation/widgets/search_filter.dart';

class DocumentQHSEPage extends StatefulWidget {
  const DocumentQHSEPage({Key? key}) : super(key: key);

  @override
  _DocumentQHSEPageState createState() => _DocumentQHSEPageState();
}

class _DocumentQHSEPageState extends State<DocumentQHSEPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite(LocaleKeys.dokument_qhse.tr(), context),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: SizeConfig.marginActivity,
            vertical: SizeConfig.marginActivity),
        child: Column(
          children: [
            SearchFilter(),
            SizedBox(height: 5),
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
                                builder: (context) => DocumentQHSEDetail()));
                      },
                      child: ItemDocumentQHSE());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
