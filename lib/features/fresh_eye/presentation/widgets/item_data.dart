import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/card/custom_item_card.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_row_start.dart';

class ItemDataFreshEye extends StatelessWidget {
  const ItemDataFreshEye({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomItemCard(
      assets: 'assets/images/approved.png',
      widgetall: Column(
        children: [
          itemRow(firstRow: 'Tanggal observasi', secondRow: '02/09/2021'),
          itemRow(firstRow: 'Area', secondRow: 'Cinunuk'),
          itemRow(firstRow: 'Jml Pegawai', secondRow: '18'),
          itemRow(firstRow: 'Observer', secondRow: '-'),
        ],
      ),
    );
  }
}
