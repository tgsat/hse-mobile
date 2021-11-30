import 'package:flutter/material.dart';
import 'package:hse_product/features/hse_plan/presentation/widgets/item_two_row_start.dart';
import 'package:hse_product/features/inspection/presentation/widgets/item_card_list.dart';

class ItemDataInspection extends StatelessWidget {
  const ItemDataInspection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ItemCardListInspection(
      assets: 'assets/images/approved.png',
      widget1: itemTwoRowsStart('Tanggal', '11/11/2021', 'Jenis', '-'),
      widget2:
          itemTwoRowsStart('Batas Tanggal', '01/12/2021', 'Status', 'Open'),
    );
  }
}
