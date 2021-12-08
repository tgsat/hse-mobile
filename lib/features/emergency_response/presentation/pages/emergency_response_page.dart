import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hse_product/core/utils/values/color_config.dart';
import 'package:hse_product/features/emergency_response/presentation/pages/laporan/laporan_page.dart';
import 'package:hse_product/features/emergency_response/presentation/pages/simulation/simulation_page.dart';

class EmergencyResponsePage extends StatelessWidget {
  const EmergencyResponsePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            title: Text(
              LocaleKeys.emergency_response.tr(),
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .apply(color: Colors.black),
            ),
            iconTheme: IconThemeData(
              color: Colors.black, //change your color here
            ),
            leading: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                    radius: 20,
                    backgroundColor: ColorConfig.primaryColor,
                    child: Center(
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    )),
              ),
            ),
            bottom: TabBar(
              indicatorColor: ColorConfig.primaryColor,
              tabs: [
                Tab(icon: itemText("Laporan Keadaan darurat", context)),
                Tab(icon: itemText("Simulasi Keadaan darurat", context)),
              ],
            ),
          ),
          body: TabBarView(
              children: [LaporanKeadaanDarurat(), SimulasitanggapDarurat()]),
        ));
  }

  itemText(String text, BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .subtitle2!
          .apply(color: ColorConfig.primaryColor),
    );
  }
}
