import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/emergency_response/presentation/pages/simulation/simulasi_detail_page.dart';
import 'package:hse_product/features/emergency_response/presentation/widgets/item_data.dart';
import 'package:hse_product/features/emergency_response/presentation/widgets/searchBar_emergency_response.dart.dart';

class SimulasitanggapDarurat extends StatelessWidget {
  const SimulasitanggapDarurat({Key? key}) : super(key: key);

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
                          builder: (context) => SimulasidetailPage()));
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
