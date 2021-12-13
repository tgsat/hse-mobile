import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/card/custom_item_card.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_row_start.dart';

class ItemDataRiskAsessment extends StatelessWidget {
  const ItemDataRiskAsessment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomItemCard(
      assets: 'assets/images/approved.png',
      widgetall: Column(
        children: [
          itemRow(
              firstRow: 'No Register', secondRow: '071/D302-15172/302/2021'),
          itemRow(firstRow: 'Tgl Register', secondRow: '13/07/2021 13:00'),
          itemRow(firstRow: 'Judul', secondRow: '-'),
          itemRow(firstRow: 'Proyek', secondRow: 'D302-15172'),
          itemRow(firstRow: 'status', secondRow: 'Approved'),
        ],
      ),
    );
  }
}
