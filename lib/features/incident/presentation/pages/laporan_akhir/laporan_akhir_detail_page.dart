import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/presentation/widgets/floating_button/floating_button_approved.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hse_product/core/presentation/widgets/item_two/item_two_column.dart';
import 'package:hse_product/core/utils/values/color_config.dart';
import 'package:hse_product/core/utils/values/size_config.dart';

class LaporanAkhirDetailPage extends StatefulWidget {
  const LaporanAkhirDetailPage({Key? key}) : super(key: key);

  @override
  _LaporanAkhirDetailPageState createState() => _LaporanAkhirDetailPageState();
}

class _LaporanAkhirDetailPageState extends State<LaporanAkhirDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite((LocaleKeys.detail_report_last.tr()), context),
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
                      itemSingleRow('LOKASI KECELAKAAN', 'Lantai 3'),
                      SizedBox(height: 4),
                      itemSingleRow('JUMLAH KORBAN', '2 Orang'),
                      SizedBox(height: 4),
                      itemSingleRow('KERUGIAN', '≥ 100 Juta'),
                      SizedBox(height: 4),
                      itemSingleRow('KATEGORI KECELAKAAN', 'Near Miss / NM'),
                      SizedBox(height: 4),
                      itemSingleRow('KATEGORI PENYEBAB KECELAKAAN', 'Terjatuh'),
                      SizedBox(height: 4),
                      itemSingleRow('KATEGORI CEDERA', 'Punggung & Tubuh'),
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
                              itemSingleRow('Nama Korban', 'Radit'),
                              SizedBox(height: 4),
                              itemSingleRow('Kategori Kecelakaan', 'FAT, LWC'),
                              SizedBox(height: 4),
                              itemSingleRow('Status Korban', 'Mandor'),
                              SizedBox(height: 4),
                              itemSingleRow(
                                  'Lama Waktu Bekerja', '1 Tahun 1 Bulan'),
                              SizedBox(height: 4),
                              itemSingleRow('Alamat', 'Surabaya'),
                            ],
                          ),
                        )
                      ],
                    ),
                    ExpansionTile(
                      title: Text('DESKRIPSI DAN KRONOLOGI KECELAKAAN',
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
                              itemSingleRow('Tanggal', '19/03/2021'),
                              SizedBox(height: 4),
                              itemSingleRow('Waktu', '19:46'),
                              SizedBox(height: 4),
                              itemSingleRow('Deskripsi Kejadian', '-'),
                            ],
                          ),
                        )
                      ],
                    ),
                    ExpansionTile(
                      title: Text('PENYEBAB TERJADINYA KECELAKAAN ',
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
                              Text(
                                  'Penerangan yang minim, tidak ada pengawasan'),
                            ],
                          ),
                        )
                      ],
                    ),
                    ExpansionTile(
                      title: Text('SAKSI - SAKSI',
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
                              itemSingleRow('Nama Saksi', 'Deni'),
                              SizedBox(height: 4),
                              itemSingleRow('Status Saksi', 'Karyawan'),
                              SizedBox(height: 4),
                              itemSingleRow('Keterangan', '-'),
                            ],
                          ),
                        )
                      ],
                    ),
                    ExpansionTile(
                      title: Text('PELAPOR',
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
                              itemSingleRow('Nama Pelapor', 'Rudi'),
                              SizedBox(height: 4),
                              itemSingleRow('Status Pelapor', 'Karyawan'),
                              SizedBox(height: 4),
                              itemSingleRow('Tanggal', '19/03/2021'),
                              SizedBox(height: 4),
                              itemSingleRow('Waktu', '19:47'),
                            ],
                          ),
                        )
                      ],
                    ),
                    ExpansionTile(
                      title: Text('RENCANA TINDAKAN DAN MONITORING',
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
                              itemSingleRow('Rencana Tindakan',
                                  'Dilakukan pengawasan, training penggunaan Full Body Harness'),
                              SizedBox(height: 4),
                              itemSingleRow('Batas Waktu', '30/03/2021'),
                              SizedBox(height: 4),
                              itemSingleRow(
                                  'Penanggung Jawab	', 'DEFRI DEDI SANTOSO'),
                              SizedBox(height: 4),
                              itemSingleRow('Status', 'Close'),
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
