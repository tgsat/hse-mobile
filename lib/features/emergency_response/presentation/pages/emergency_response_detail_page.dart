import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/header/item_header.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/presentation/widgets/floating_button/floating_button_approved.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_column.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hse_product/core/utils/values/color_config.dart';
import 'package:hse_product/core/utils/values/size_config.dart';

class EmergencyResponseDetailPage extends StatelessWidget {
  const EmergencyResponseDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite(LocaleKeys.detail_emergency_response.tr(), context),
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
                    itemTextHeader(ColorConfig.primaryColor, 'DATA PELAPOR'),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            itemSingleRow(
                              'Nama',
                              'Sudirman',
                            ),
                            itemSingleRow(
                              'Jabatan',
                              'Mandor',
                            ),
                            itemSingleRow(
                              'No Tlp',
                              '0811234567',
                            ),
                            itemSingleRow(
                              'Proyek',
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
                    itemTextHeader(
                        ColorConfig.primaryColor, 'INFORMASI KEJADIAN'),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            itemSingleRow(
                              'Tgl Kejadian',
                              '11/11/2021',
                            ),
                            itemSingleRow(
                              'Waktu Kejadian',
                              '06/12/2021',
                            ),
                            itemSingleRow(
                              'Lokasi Kejadian',
                              'Bandung',
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
                    itemTextHeader(
                        ColorConfig.primaryColor, 'PERISTIWA YANG TERJADI'),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            itemSingleRow(
                              'Bencana Alam',
                              'Banjir',
                            ),
                            itemSingleRow(
                              'Bencana Huru Hara',
                              'Perampokan',
                            ),
                            itemSingleRow(
                              'Status Kejadian',
                              'Keadaan darurat sudah dapat dikendalikan',
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
                    itemTextHeader(
                        ColorConfig.primaryColor, 'DESKRIPSI KEJADIAN'),
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            itemSingleRow(
                              'Penyebab Kejadian',
                              'Penyebab API',
                            ),
                            itemSingleRow(
                              'Jml Korban',
                              '10',
                            ),
                            itemSingleRow(
                              'Kerusakan',
                              'Kerusakan API',
                            ),
                            itemSingleRow(
                              'Langkah Awal',
                              'Langkah API',
                            ),
                            itemSingleRow(
                              'Dampak Produksi',
                              'Dampak API',
                            ),
                            itemSingleRow(
                              'Dampak Sosial',
                              'Dampak API',
                            ),
                            itemSingleRow(
                              'Aset Kerugian',
                              'Perkiraan API',
                            ),
                            itemSingleRow(
                              'Bantuan',
                              'Ya',
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
