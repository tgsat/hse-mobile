import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_row_start.dart';
import 'package:hse_product/features/incident/presentation/widgets/item_card.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_column.dart';

class ItemDataIncident extends StatelessWidget {
  const ItemDataIncident({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ItemCardIncident(
      title1: itemSingleRow('Laporan Awal', '-'),
      title2: itemSingleRow('Laporan Akhir', '-'),
      title1text: ': -',
      title2text: ': -',
      assets: 'assets/images/approved.png',
      widget1: itemTwoRowsStart('No Register', '-', 'Tanggal Incident', '-'),
      widget2: itemTwoRowsStart('Proyek', '-', 'Lokasi', '-'),
      bar3: 'Status',
      bar3text: ': Open',
    );
  }
}
