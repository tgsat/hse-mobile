import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/card/custom_item_card.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_row_start.dart';

class ItemHSEPlan extends StatelessWidget {
  const ItemHSEPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomItemCard(
      assets: 'assets/images/approved.png',
      widgetall: Column(
        children: [
          itemRow(firstRow: 'Judul HSE Plan', secondRow: 'Content'),
          itemRow(firstRow: 'Tgl HSE Plan', secondRow: '12/21/2021'),
          itemRow(firstRow: 'Revisi', secondRow: 'Content'),
          itemRow(firstRow: 'Status', secondRow: 'Open'),
        ],
      ),
    );
  }
}
