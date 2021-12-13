import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/card/custom_item_card.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_row_start.dart';

class ItemDataAudit extends StatelessWidget {
  const ItemDataAudit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomItemCard(
        assets: 'assets/images/approved.png',
        widgetall: Column(children: [
          itemRow(firstRow: 'No Audit', secondRow: 'D302-14721'),
          itemRow(firstRow: 'Tanggal Audit', secondRow: '12/12/2021'),
          itemRow(firstRow: 'Due Date', secondRow: '01/12/2021'),
          itemRow(firstRow: 'Status', secondRow: 'Open'),
        ]));
  }
}
