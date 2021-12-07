import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/card/custom_item_card.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_row_start.dart';

class ItemDataEmergencyResponse extends StatelessWidget {
  const ItemDataEmergencyResponse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomItemCard(
      assets: 'assets/images/approved.png',
      widgetall: Column(
        children: [
          itemRow(firstRow: 'Proyek', secondRow: 'D302-15172'),
          itemRow(firstRow: 'Nama Pelapor', secondRow: 'Sudirman'),
          itemRow(firstRow: 'Tgl Kejadian', secondRow: '12/09/2021'),
          itemRow(firstRow: 'Status', secondRow: 'Open'),
        ],
      ),
    );
  }
}
