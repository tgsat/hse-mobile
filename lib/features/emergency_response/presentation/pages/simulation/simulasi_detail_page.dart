import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/header/item_header.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/presentation/widgets/floating_button/floating_button_approved.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_column.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:hse_product/core/utils/values/color_config.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hse_product/core/utils/values/size_config.dart';

class SimulasidetailPage extends StatelessWidget {
  const SimulasidetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite(
          "Detail" + " Simulasi " + LocaleKeys.emergency_response.tr(),
          context),
      body: Container(
        margin: EdgeInsets.symmetric(
            vertical: SizeConfig.marginActivity,
            horizontal: SizeConfig.marginActivity),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    itemTextHeader(
                        ColorConfig.primaryColor, 'LAPORAN SIMULASI'),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            itemSingleRow(
                              'UNIT BISNIS / UNIT KERJA',
                              'Divisi Gedung',
                            ),
                            itemSingleRow(
                              'LOKASI SIMULASI',
                              'Lokasi API',
                            ),
                            itemSingleRow(
                              'JENIS SIMULASI',
                              'Jenis API',
                            ),
                            itemSingleRow(
                              'TANGGAL / WAKTU',
                              '13/07/2021  13:00',
                            ),
                            itemSingleRow(
                              'PESERTA SIMULASI',
                              '10',
                            ),
                            itemSingleRow(
                              'PROYEK',
                              'Revitalisasi dan Pembangunan Gudang Unit Pengantongan Pupuk PT Bhanda Ghara Reksa (Persero) Lokasi Medan dan Lampung',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    itemTextHeader(ColorConfig.primaryColor,
                        'LAPORAN PELAKSANAAN SIMULASI TANGGAP DARURAT'),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            itemSingleRow(
                              'TUJUAN SIMULASI TANGGAP DARURAT',
                              'Tujuan API',
                            ),
                            itemSingleRow(
                              'SKENARIO SIMULASI TANGGAP DARURAT',
                              'Skenario API',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    itemTextHeader(ColorConfig.primaryColor,
                        'EVALUASI SIMULASI TANGGAP DARURAT'),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            itemSingleRow(
                              'POIN-POIN HASIL OBSERVASI POSITIF',
                              '-',
                            ),
                            itemSingleRow(
                              'POIN-POIN YANG HARUS DITINGKATKAN',
                              '-',
                            ),
                            itemSingleRow(
                              'TINDAKAN PERBAIKAN',
                              '-',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: buildFloatingApproved(() {}, () {}),
    );
  }
}
