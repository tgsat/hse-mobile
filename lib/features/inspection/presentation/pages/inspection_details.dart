import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/inspection/presentation/widgets/item_data_inspection.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_column.dart';

class InspectionDetail extends StatelessWidget {
  const InspectionDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite(Dictionary.detail_inspection, context),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: SizeConfig.marginForm),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ItemDataInspection(),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        itemSingleRow(
                          'Proyek',
                          'Persiapan Lahan TBBM Tanjung Batu - Balikpapan (Ulang)',
                        ),
                        SizedBox(height: 4),
                        itemSingleRow(
                          'Lokasi Temuan',
                          'Cibolog',
                        ),
                        SizedBox(height: 4),
                        itemSingleRow(
                          'Klasifikasi Temuan',
                          'APD',
                        ),
                        SizedBox(height: 4),
                        itemSingleRow(
                          'Tindakan Perbaikan',
                          '-',
                        ),
                        SizedBox(height: 4),
                        itemSingleRow(
                          'Tanggal Perbaikan',
                          '-',
                        ),
                        SizedBox(height: 4),
                        itemSingleRow(
                          'PIC',
                          '-',
                        ),
                        SizedBox(height: 4),
                        itemTwoColumnWithImage(
                            'Temuan & Dokumentasi',
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/statistics.png',
                                  height: 45,
                                  width: 45,
                                ),
                                Image.asset(
                                  'assets/images/statistics.png',
                                  height: 45,
                                  width: 45,
                                ),
                                Image.asset(
                                  'assets/images/statistics.png',
                                  height: 45,
                                  width: 45,
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Wrap(
        //will break to another line on overflow
        direction: Axis.horizontal, //use vertical to show  on vertical axis
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(
                onPressed: () {
                  //action code for button 2
                },
                backgroundColor: Colors.red,
                child: Icon(Icons.close),
              )), // button first

          Container(
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
                onPressed: () {
                  //action code for button 2
                },
                backgroundColor: Colors.green,
                child: Icon(Icons.check)),
          ) // button second

          // Add more buttons here
        ],
      ),
    );
  }
}
