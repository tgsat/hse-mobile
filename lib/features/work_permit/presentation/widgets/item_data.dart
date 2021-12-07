import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/card/custom_item_card.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_row_start.dart';

class ItemDataWorkPermit extends StatelessWidget {
  const ItemDataWorkPermit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomItemCard(
      assets: 'assets/images/approved.png',
      widgetall: Column(
        children: [
          itemRow(firstRow: 'No Work Permit', secondRow: '12345'),
          itemRow(firstRow: 'Tgl Work Permit', secondRow: '11/12/2021'),
          itemRow(firstRow: 'Tipe Work Permit', secondRow: 'Izin'),
          itemRow(firstRow: 'Tgl Berlaku', secondRow: '17/12/2021'),
        ],
      ),
    );
  }
}
