import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hse_product/core/presentation/widgets/floating_button/floating_button_approved.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_column.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:hse_product/core/utils/values/color_config.dart';
import 'package:hse_product/core/utils/values/size_config.dart';

class LaporanAwalDetailPage extends StatelessWidget {
  const LaporanAwalDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite((LocaleKeys.detail_report_first.tr()), context),
      body: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.symmetric(
            vertical: SizeConfig.marginActivity,
            horizontal: SizeConfig.marginActivity),
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
                  margin: EdgeInsets.symmetric(
                      horizontal: SizeConfig.marginActivity),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      itemSingleRow('NO. REGISTER', '071/D302-15172/302/2021'),
                      SizedBox(height: 4),
                      itemSingleRow('WAKTU KECELAKAAN', '13/07/2021 13:00'),
                      SizedBox(height: 4),
                      itemSingleRow('LOKASI KECELAKAAN', 'API'),
                      SizedBox(height: 4),
                      itemSingleRow('JUMLAH KORBAN', '2 Orang'),
                      SizedBox(height: 4),
                      itemSingleRow('KATEGORI KECELAKAAN', 'Near Miss / NM'),
                      SizedBox(height: 4),
                      itemSingleRow('PROYEK',
                          'Revitalisasi dan Pembangunan Gudang Unit Pengantongan Pupuk PT Bhanda Ghara Reksa (Persero) Lokasi Medan dan Lampung'),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Container(
                child: Column(
                  children: <Widget>[
                    ExpansionTile(
                      title: Text('IDENTITAS KORBAN',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .apply(color: ColorConfig.primaryColor)),
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.marginActivity),
                          child: Column(
                            children: [
                              itemSingleRow('Nama Korban', 'API 1'),
                              SizedBox(height: 4),
                              itemSingleRow('Kategori Kecelakaan', 'NM'),
                              SizedBox(height: 4),
                              itemSingleRow('Status Korban', 'Karyawan'),
                              SizedBox(height: 4),
                              itemSingleRow(
                                  'Lama Waktu Bekerja', '1 Tahun 10 Bulan'),
                              SizedBox(height: 4),
                              itemSingleRow('Alamat', 'Alamat API'),
                            ],
                          ),
                        )
                      ],
                    ),
                    ExpansionTile(
                      title: Text('DESKRIPSI KECELAKAAN',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .apply(color: ColorConfig.primaryColor)),
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.marginActivity),
                          child: Row(
                            children: [
                              Text('Deskripsi API'),
                            ],
                          ),
                        )
                      ],
                    ),
                    ExpansionTile(
                      title: Text('TINDAKAN YANG SUDAH DILAKUKAN',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .apply(color: ColorConfig.primaryColor)),
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.marginActivity),
                          child: Row(
                            children: [
                              Text('Tindakan API'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
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
