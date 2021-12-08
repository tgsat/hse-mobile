import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/emergency_response/presentation/pages/laporan/laporan_detail_page.dart';
import 'package:hse_product/features/emergency_response/presentation/widgets/item_data.dart';
import 'package:hse_product/features/emergency_response/presentation/widgets/searchBar_emergency_response.dart.dart';

class LaporanKeadaanDarurat extends StatelessWidget {
  const LaporanKeadaanDarurat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: SizeConfig.marginActivity,
          horizontal: SizeConfig.marginActivity),
      child: Column(
        children: [
          SearchBarEmergency(),
          SizedBox(height: 5),
          Divider(color: Colors.grey.shade100),
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LaporanDetailPage()));
                },
                child: ItemDataEmergencyResponse(),
              );
            },
          ))
        ],
      ),
    );
  }
}
