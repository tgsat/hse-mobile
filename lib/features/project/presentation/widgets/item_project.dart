import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/project/domain/entities/data_project.dart';

class ItemProject extends StatelessWidget {
  final DataProject? data;
  const ItemProject({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: Container(
        width: SizeConfig.maxWidth(context),
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              color: data?.status == 'Approve' ? Colors.green : Colors.red,
              width: 6.0,
            ),
          ),
        ),
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data?.namaProyek ?? '-',
              style: TextStyle(fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 4),
            Text(data?.lokasiProyek ?? '-'),
            Text(
              data?.status ?? 'On Progress',
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
