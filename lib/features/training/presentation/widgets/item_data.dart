import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/card/custom_item_card.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_row_start.dart';

class ItemDataTraining extends StatelessWidget {
  const ItemDataTraining({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomItemCard(
      assets: 'assets/images/approved.png',
      widgetall: Column(
        children: [
          itemRow(firstRow: 'Judul', secondRow: '-'),
          itemRow(firstRow: 'Tgl Efektif', secondRow: '22/04/2021'),
          itemRow(firstRow: 'Tgl Berlaku', secondRow: '11/09/2021'),
          itemRow(firstRow: 'Status', secondRow: 'Open'),
        ],
      ),
    );
  }
}
