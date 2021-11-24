import 'package:flutter/material.dart';
import 'package:hse_product/core/domain/entities/data_login.dart';
import 'package:hse_product/core/utils/values/color_config.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';

class DisplayData extends StatelessWidget {
  final DataLogin profile;
  const DisplayData({Key? key, required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (profile.picture != null)
                ? CircleAvatar(
                    radius: 65,
                    backgroundColor: ColorConfig.primaryColor,
                    child: CircleAvatar(
                        radius: 60,
                        backgroundImage: NetworkImage(profile.picture!)),
                  )
                : CircleAvatar(
                    radius: 65,
                    backgroundColor: ColorConfig.primaryColor,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage:
                          AssetImage("assets/images/person_profile.png"),
                    ),
                  ),
          ],
        ),
        SizedBox(height: 40),
        Row(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // name //
                  Text(Dictionary.nama,
                      style: TextStyle(
                          fontSize: SizeConfig.textMedium,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  Text(profile.name ?? '-',
                      style: TextStyle(
                        fontSize: SizeConfig.textSizeSmall,
                      )),
                  SizedBox(height: 5),
                  // email //
                  Text(Dictionary.alamat_email,
                      style: TextStyle(
                          fontSize: SizeConfig.textMedium,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  Text(profile.email ?? '-',
                      style: TextStyle(
                        fontSize: SizeConfig.textSizeSmall,
                      )),
                  SizedBox(height: 5),
                  // alamat //
                  Text(Dictionary.no_hp,
                      style: TextStyle(
                          fontSize: SizeConfig.textMedium,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  Text(profile.phone ?? '-',
                      style: TextStyle(
                        fontSize: SizeConfig.textSizeSmall,
                      ))
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
