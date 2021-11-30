import 'package:flutter/material.dart';
import 'package:hse_product/features/comunication/presentation/widgets/item_card_list.dart';
import 'package:hse_product/features/hse_plan/presentation/widgets/item_two_row_start.dart';

class ItemComunication extends StatefulWidget {
  const ItemComunication({Key? key}) : super(key: key);

  @override
  _ItemComunicationState createState() => _ItemComunicationState();
}

class _ItemComunicationState extends State<ItemComunication> {
  @override
  Widget build(BuildContext context) {
    return ItemcardListComunication(
        assets: 'assets/images/approved.png',
        widget1: itemTwoRowsStart('Judul', 'content', 'Tanggal', '11/11/2021'),
        widget2: itemTwoRowsStart('Status', 'Approved', 'Waktu', '11:30'),
        bar3: 'Tipe',
        bar3text: ': -');
  }
}

class ItemDetailComunication extends StatefulWidget {
  const ItemDetailComunication({Key? key}) : super(key: key);

  @override
  _ItemDetailComunicationState createState() => _ItemDetailComunicationState();
}

class _ItemDetailComunicationState extends State<ItemDetailComunication> {
  @override
  Widget build(BuildContext context) {
    return ItemcardListComunication(
        assets: 'assets/images/approved.png',
        widget1: itemTwoRowsStart('Judul', 'content', 'Tanggal', '11/11/2021'),
        widget2: itemTwoRowsStart('Status', 'Approved', 'Waktu', '11:30'),
        bar3: 'Tipe',
        bar3text: ': ...');
  }
}
