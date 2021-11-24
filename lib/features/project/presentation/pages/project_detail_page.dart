import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_primary.dart';
import 'package:hse_product/core/utils/helpers/download_file.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/project/domain/entities/data_project.dart';

class ProjectDetailPage extends StatelessWidget {
  final DataProject data;
  const ProjectDetailPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarPrimary(context, title: Dictionary.info_proyek),
      body: Container(
        margin: EdgeInsets.all(SizeConfig.marginActivity),
        width: SizeConfig.maxWidth(context),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _itemRow(Dictionary.nama_proyek, data.namaProyek ?? '-'),
              _itemRow(Dictionary.lokasi, data.lokasiProyek ?? '-'),
              _itemRow(Dictionary.no_hp, data.telephone ?? '-'),
              _itemRow(
                  Dictionary.jenis_proyek_konstruksi, data.jenisProyek ?? '-'),
              _itemRow(Dictionary.alamat_email_pemilik, data.email ?? '-'),
              _itemRow(
                  Dictionary.perkiraan_waktu_lelang,
                  data.perkiraanWaktu != null
                      ? DateFormat('MM-yyyy').format(data.perkiraanWaktu!)
                      : '-'),
              _itemRow(Dictionary.info_lainnya, data.informasiLainnya ?? '-'),
              SizedBox(height: SizeConfig.marginForm),
              Text(
                Dictionary.upload_bukti_evidence,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              if (data.fileUrl != null)
                InkWell(
                  onTap: () {
                    DownloadFileCustom.downloadFile(
                        context, data.fileUrl ?? '');
                  },
                  child: Row(
                    children: [
                      Icon(Icons.download, color: Colors.blue),
                      Text(
                        data.fileName ?? '-',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }

  _itemRow(String label, String content) => Container(
        margin: EdgeInsets.symmetric(vertical: SizeConfig.marginForm),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              content,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      );
}
