import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
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
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      itemSingleRow(
                        'Temuan',
                        'Housekeeping',
                      ),
                      SizedBox(height: 4),
                      itemSingleRow(
                        'Keterangan',
                        'Banyak sampah material kayu, triplek, potongan be si, dan tumpahan beton pengecoran Less',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Wrap(
        //will break to another line on overflow
        direction: Axis.horizontal, //use vertical to show  on vertical axis
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  //action code for button 2
                },
                backgroundColor: Colors.red,
                child: Icon(Icons.close),
              )), // button first

          Container(
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
                onPressed: () {
                  //action code for button 2
                },
                backgroundColor: Colors.green,
                child: Icon(Icons.check)),
          ) // button second

          // Add more buttons here
        ],
      ),
    );
  }
}
