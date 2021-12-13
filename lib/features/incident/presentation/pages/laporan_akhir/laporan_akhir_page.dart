import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/incident/presentation/pages/laporan_akhir/laporan_akhir_detail_page.dart';
import 'package:hse_product/features/incident/presentation/widgets/item_data_incident.dart';
import 'package:hse_product/features/incident/presentation/widgets/searchBar_incident.dart';

class LaporanAkhirPage extends StatelessWidget {
  const LaporanAkhirPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: SizeConfig.marginActivity,
        horizontal: SizeConfig.marginActivity,
      ),
      child: Column(
        children: [
          SearchBarIncident(),
          SizedBox(height: 5),
          Divider(
            color: Colors.grey.shade100,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LaporanAkhirDetailPage()));
                  },
                  child: ItemDataIncident(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
