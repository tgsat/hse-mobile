import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/card/custom_item_card.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_row_start.dart';

class ItemDataIncident extends StatelessWidget {
  const ItemDataIncident({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomItemCard(
      assets: 'assets/images/approved.png',
      widgetall: Column(
        children: [
          itemRow(
              firstRow: 'No Register', secondRow: '071/D302-15172/302/2021'),
          itemRow(firstRow: 'Proyek', secondRow: 'D302-15172'),
          itemRow(firstRow: 'Tgl Kecelakaan', secondRow: '09/02/2021 14:15'),
          itemRow(firstRow: 'Lokasi', secondRow: 'Basement'),
          itemRow(firstRow: 'Jml Korban', secondRow: '1 Orang'),
          itemRow(firstRow: 'Status', secondRow: 'Close'),
        ],
      ),
    );
  }
}
