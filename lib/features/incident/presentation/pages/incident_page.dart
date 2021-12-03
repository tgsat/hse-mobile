import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/incident/presentation/pages/incident_detail_page.dart';
import 'package:hse_product/features/incident/presentation/widgets/item_data_incident.dart';

class IncidentPage extends StatelessWidget {
  const IncidentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite(Dictionary.incident, context),
      body: Container(
        margin: EdgeInsets.symmetric(
          vertical: SizeConfig.marginActivity,
          horizontal: SizeConfig.marginActivity,
        ),
        child: Column(
          children: [
            SizedBox(height: 10.0),
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
                              builder: (context) => IncidentDetailPage()));
                    },
                    child: ItemDataIncident(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
