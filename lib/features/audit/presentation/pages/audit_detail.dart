import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/presentation/widgets/floating_button/floating_button_approved.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/audit/presentation/widgets/item_data_audit.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_column.dart';

class AuditDetailPage extends StatefulWidget {
  const AuditDetailPage({Key? key}) : super(key: key);

  @override
  _AuditDetailPageState createState() => _AuditDetailPageState();
}

class _AuditDetailPageState extends State<AuditDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarWhite(Dictionary.detail_audit, context),
        body: Container(
          margin: EdgeInsets.symmetric(
              vertical: SizeConfig.marginActivity,
              horizontal: SizeConfig.marginActivity),
          child: Column(
            children: [
              ItemDataAudit(),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: SizeConfig.marginActivity),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                            'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is')
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: buildFloatingApproved(() {}, () {}));
  }
}
