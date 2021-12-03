import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/presentation/widgets/floating_button/floating_button_approved.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_column.dart';

class IncidentDetailPage extends StatefulWidget {
  const IncidentDetailPage({Key? key}) : super(key: key);

  @override
  _IncidentDetailPageState createState() => _IncidentDetailPageState();
}

class _IncidentDetailPageState extends State<IncidentDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite((LocaleKeys.detail_incident.tr()), context),
      body: SingleChildScrollView(
          child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(50)),
                            width: 20,
                            height: 20,
                            child: Image.asset(
                              'assets/images/approved.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                      itemSingleRow('Laporan Awal', '-'),
                      SizedBox(height: 4),
                      itemSingleRow('Laporan Akhir', '-'),
                      SizedBox(height: 4),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      itemSingleRow('Data Umum', '-'),
                      SizedBox(height: 4),
                      itemSingleRow('Identitas Korban', '-'),
                      SizedBox(height: 4),
                      itemSingleRow('Deskripsi Kecelakaan', '-'),
                      SizedBox(height: 4),
                      itemSingleRow('Tindakan yang dilakukan', '-'),
                      SizedBox(height: 4),
                      itemSingleRow('Penyebab', '-'),
                      SizedBox(height: 4),
                      itemSingleRow('Saksi-saksi', '-'),
                      SizedBox(height: 4),
                      itemSingleRow('Pelapor', '-'),
                      SizedBox(height: 4),
                      itemSingleRow('Rencana Tindakan', '-'),
                      SizedBox(height: 4),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
      floatingActionButton: buildFloatingApproved(() {}, () {}),
    );
  }
}
