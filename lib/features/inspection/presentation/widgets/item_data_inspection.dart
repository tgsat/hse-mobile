import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/card/custom_item_card.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_row_start.dart';

class ItemDataInspection extends StatelessWidget {
  const ItemDataInspection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomItemCard(
      assets: 'assets/images/approved.png',
      widgetall: Column(
        children: [
          itemRow(firstRow: 'Tgl Inspeksi', secondRow: '11/12/2021'),
          itemRow(
              firstRow: 'Jenis Inspeksi', secondRow: 'Alat Angkat & Angkut'),
          itemRow(firstRow: 'Batas Tgl Perbaikan', secondRow: '22/12/2021'),
          itemRow(firstRow: 'Status', secondRow: 'close'),
        ],
      ),
    );
  }
}
