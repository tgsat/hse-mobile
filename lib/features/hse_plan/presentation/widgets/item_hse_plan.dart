import 'package:flutter/material.dart';
import 'package:hse_product/features/hse_plan/presentation/widgets/item_card_list.dart';
import 'package:hse_product/features/hse_plan/presentation/widgets/item_two_row_start.dart';

class ItemHSEPlan extends StatelessWidget {
  const ItemHSEPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ItemCardListHSEPlan(
        assets: 'assets/images/approved.png',
        widget1: itemTwoRowsStart('Tahun', '2021', 'Lokasi', 'Asrama pragma'),
        widget2:
            itemTwoRowsStart('Tanggal', '11/11/2021', 'Status', 'Approved'),
        bar3: 'Tim',
        bar3text: ': Pelaksana 1, Pelaksana 2, Pelaksana 3');
  }
}
