import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/card/custom_item_card.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_column.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_row_start.dart';

class ItemDataWeeklyToolboxTalk extends StatelessWidget {
  const ItemDataWeeklyToolboxTalk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomItemCard(
      assets: 'assets/images/approved.png',
      widgetall: Column(
        children: [
          itemRow(firstRow: 'Proyek', secondRow: 'D302-14721'),
          itemRow(firstRow: 'Waktu Pelaksanaan', secondRow: '01/07/2021 01:00'),
          itemRow(firstRow: 'Lokasi', secondRow: 'Test12'),
          itemRow(firstRow: 'Pengisi Materi', secondRow: 'Eko Zulkarnaen'),
          itemRow(firstRow: 'Grup Pekerja', secondRow: '1 Grup'),
          itemRow(firstRow: 'Jml Peserta', secondRow: '34 Orang'),
        ],
      ),
    );
  }
}

class ItemDataWeeklyToolboxTalkDetail extends StatelessWidget {
  const ItemDataWeeklyToolboxTalkDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomItemCard(
      assets: 'assets/images/approved.png',
      widgetall: Column(
        children: [
          itemRow(
              firstRow: 'Proyek',
              secondRow:
                  'RELAYOUT DAN PERLUASAN TERMINAL PENUMPANG BANDARA SIM'),
          itemRow(firstRow: 'Waktu Pelaksanaan', secondRow: '13/07/2021 13:00'),
          itemRow(firstRow: 'Lokasi', secondRow: 'Bandung'),
          itemRow(firstRow: 'Grup Pekerja', secondRow: 'SOM'),
          itemRow(firstRow: 'Jml Peserta', secondRow: '8 Orang'),
          itemTwoColumnWithImage(
              'Lampiran',
              Image.asset('assets/images/toolbox_talks.png',
                  height: 35, width: 35)),
        ],
      ),
    );
  }
}
