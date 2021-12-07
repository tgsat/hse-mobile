import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/card/custom_item_card.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_row_start.dart';

class ItemDataHazard extends StatelessWidget {
  const ItemDataHazard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomItemCard(
      assets: 'assets/images/approved.png',
      widgetall: Column(
        children: [
          itemRow(firstRow: 'No Identifikasi', secondRow: 'No Identifikasi'),
          itemRow(firstRow: 'Tgl Identifikasi', secondRow: 'Tgl Identifikasi'),
          itemRow(firstRow: 'Judul', secondRow: 'Judul'),
          itemRow(firstRow: 'Jml Hazard', secondRow: 'Jml Hazard'),
        ],
      ),
    );
  }
}
