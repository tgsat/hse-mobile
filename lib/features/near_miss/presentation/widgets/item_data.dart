import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_column.dart';
import 'package:hse_product/features/near_miss/presentation/widgets/item_card.dart';

class ItemDataNearMiss extends StatelessWidget {
  const ItemDataNearMiss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ItemCardNearMiss(
      assets: 'assets/images/approved.png',
      widget1: itemSingleRow('Proyek', 'Proyek'),
      widget2: itemSingleRow('Tanggal Kejadian', 'Tanggal Kejadian'),
      widget3: itemSingleRow('Kondisi', 'Kondisi'),
      widget4: itemSingleRow('Lokasi', 'Lokasi'),
      widget5: itemSingleRow('Status', 'Status'),
    );
  }
}
