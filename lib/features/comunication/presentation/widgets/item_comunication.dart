import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/card/custom_item_card.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_row_start.dart';

class ItemComunication extends StatefulWidget {
  const ItemComunication({Key? key}) : super(key: key);

  @override
  _ItemComunicationState createState() => _ItemComunicationState();
}

class _ItemComunicationState extends State<ItemComunication> {
  @override
  Widget build(BuildContext context) {
    return CustomItemCard(
      assets: 'assets/images/approved.png',
      widgetall: Column(
        children: [
          itemRow(firstRow: 'Judul', secondRow: 'Content'),
          itemRow(firstRow: 'Tgl Posting', secondRow: '11/11/2021'),
          itemRow(firstRow: 'Tipe', secondRow: '-'),
          itemRow(firstRow: 'Status', secondRow: 'Open'),
        ],
      ),
    );
  }
}
