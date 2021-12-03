import 'package:flutter/material.dart';
import 'package:hse_product/features/risk_asessment/presentation/widgets/item_card.dart';
import 'package:hse_product/features/risk_asessment/presentation/widgets/item_two_row.dart';

class ItemDataRiskAsessment extends StatelessWidget {
  const ItemDataRiskAsessment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ItemCardRiskAsessment(
        assets: 'assets/images/approved.png',
        widget1: itemTwoRowRisk(
            'No Register', '-', 'Tanggal Register', '11/11/2021'),
        widget2: itemTwoRowRisk('Judul', 'Judul', 'Proyek', 'Proyek'));
  }
}
