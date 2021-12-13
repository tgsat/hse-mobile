import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/audit/presentation/pages/audit_detail.dart';
import 'package:hse_product/features/audit/presentation/widgets/searchBar_audit.dart';
import 'package:hse_product/features/audit/presentation/widgets/item_data_audit.dart';

class AuditPage extends StatefulWidget {
  const AuditPage({Key? key}) : super(key: key);

  @override
  _AuditPageState createState() => _AuditPageState();
}

class _AuditPageState extends State<AuditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite(Dictionary.audit, context),
      body: Container(
        margin: EdgeInsets.symmetric(
            vertical: SizeConfig.marginActivity,
            horizontal: SizeConfig.marginActivity),
        child: Column(
          children: [
            SearchBarAudit(),
            SizedBox(height: 5),
            Divider(
              color: Colors.grey.shade100,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AuditDetailPage()));
                      },
                      child: ItemDataAudit());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
