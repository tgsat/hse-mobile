import 'package:flutter/material.dart';
import 'package:hse_product/features/audit/presentation/widgets/item_card_list.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_row_start.dart';

class ItemDataAudit extends StatelessWidget {
  const ItemDataAudit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ItemCardListAudit(
      assets: 'assets/images/approved.png',
      widget1: itemTwoRowsStart('No Audit', 'D302-14721', 'Status', 'Open'),
      widget2: itemTwoRowsStart(
          'Due Date', '01/12/2021', 'Tanggal Audit', '12/12/2021'),
    );
  }
}
