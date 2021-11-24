import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hse_product/core/presentation/widgets/dialogs/dialog_general.dart';
import 'package:hse_product/core/presentation/widgets/snack_bars/snack_bar_danger.dart';
import 'package:hse_product/core/presentation/widgets/snack_bars/snack_bar_success.dart';

class DownloadFileCustom {
  static Future<void> downloadFile(
    BuildContext context,
    String url,
  ) async {
    var dir;
    bool download = false;
    createDirectory();
    buildSuccessSnackbar(context, "File Downloading..");
    try {
      dir = await getApplicationDocumentsDirectory();

      var file = await Dio().download('$url', '${dir.path}/$url',
          onReceiveProgress: (rec, total) {
        print("Rec: $rec , Total: $total");
      });

      print("FILE " + file.toString());
      download = true;
    } catch (e) {
      print("FILE " + e.toString());
      print(e);
    }

    if (download) {
      showDialog(
        context: context,
        builder: (context) {
          return DialogGeneral(
              title: 'Download Berhasil',
              content: Text("Buka file di folder :\n${dir.path}"),
              actions: [
                TextButton(
                  onPressed: () {
                    OpenFile.open('${dir.path}/$url');
                  },
                  child: Text('Yes'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Close'),
                )
              ]);
        },
      );
    } else
      buildDangerSnackbar(context, "Something went wrong");
  }

  static createDirectory() async {
    Directory baseDir = await getApplicationDocumentsDirectory();
    String dirToBeCreated = "download";
    String finalDir = join(baseDir.path, dirToBeCreated);
    var dir = Directory(finalDir);
    bool dirExists = await dir.exists();
    if (!dirExists) {
      dir.create();
      print("Directory created");
    } else {
      print("Directory exist");
    }
  }

  // static downloadFromBytes(BuildContext context, String url,
  //     {String? filename}) async {
  //   try {
  //     // Get Token
  //     String token = await Session.getToken();

  //     // Create Directory
  //     createDirectory();

  //     // Get File From Dio
  //     Response<List<int>> rs;
  //     rs = await Dio().get<List<int>>(
  //       url,
  //       options: Options(
  //         responseType: ResponseType.bytes,
  //         headers: {'Authorization': 'Bearer $token'},
  //       ),
  //     );
  //     var bytes = rs.data;

  //     var dir = await getApplicationDocumentsDirectory();
  //     String path = "${dir.path}/" + "${filename ?? 'download'}" + ".pdf";
  //     print("Directory:" + dir.path);

  //     File file = File(path);
  //     File urlFile = await file.writeAsBytes(bytes);
  //     if (urlFile != null) {
  //       CustomDialog.yesNoDialog(
  //           context: context,
  //           title: "Download Berhasil",
  //           body: "Buka file di folder :\n${dir.path}",
  //           onYesPressed: () {
  //             OpenFile.open(path);
  //           });
  //     } else
  //       CommonUtils.showToast("Something went wrong");
  //   } catch (e) {
  //     throw Exception("Error $e");
  //   }
  // }
}
