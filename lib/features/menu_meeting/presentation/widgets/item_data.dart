import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/card/custom_item_card.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_row_start.dart';

class ItemDataMenuMeeting extends StatelessWidget {
  const ItemDataMenuMeeting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomItemCard(
      assets: 'assets/images/approved.png',
      widgetall: Column(children: [
        itemRow(firstRow: 'Tgl Rapat', secondRow: '11/12/2021'),
        itemRow(
            firstRow: 'Proyek',
            secondRow: 'Proyek pembangunan jembatan layang lokasi jakarta'),
        itemRow(firstRow: 'Topik Rapat', secondRow: 'Membahas jembatan'),
        itemRow(firstRow: 'Peserta', secondRow: '30'),
      ]),
    );
  }
}
