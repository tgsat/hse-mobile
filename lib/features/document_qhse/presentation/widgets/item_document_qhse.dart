import 'package:flutter/material.dart';
import 'package:hse_product/features/document_qhse/presentation/widgets/item_card_list.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_row_start.dart';

class ItemDocumentQHSE extends StatefulWidget {
  const ItemDocumentQHSE({Key? key}) : super(key: key);

  @override
  _ItemDocumentQHSEState createState() => _ItemDocumentQHSEState();
}

class _ItemDocumentQHSEState extends State<ItemDocumentQHSE> {
  @override
  Widget build(BuildContext context) {
    return ItemCardListDocumentQHSE(
        assets: 'assets/images/folder.png', text: 'download/data/folder/file');
  }
}

class ItemDetailDocumentQHSE extends StatefulWidget {
  const ItemDetailDocumentQHSE({Key? key}) : super(key: key);

  @override
  _ItemDetailDocumentQHSEState createState() => _ItemDetailDocumentQHSEState();
}

class _ItemDetailDocumentQHSEState extends State<ItemDetailDocumentQHSE> {
  @override
  Widget build(BuildContext context) {
    return ItemCardDetailDocumentQHSE(
        assets: 'assets/images/approved.png',
        widget1:
            itemTwoRowsStart('Tahun', '11/11/2021', 'Lokasi', 'Asrama pragma'),
        widget2: itemTwoRowsStart('Waktu', '11:30', 'Status', 'Approve'),
        bar3: 'Jenis',
        bar3text: ': File');
  }
}
