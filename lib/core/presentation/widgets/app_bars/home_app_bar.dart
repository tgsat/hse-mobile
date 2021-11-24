import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/color_config.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';

homeAppBar(BuildContext context, String name) => AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Container(
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    Dictionary.app_name,
                    style: const TextStyle(
                      color: ColorConfig.primaryColor,
                      fontSize: SizeConfig.textBig,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    name,
                    style: const TextStyle(
                      color: ColorConfig.primaryColor,
                      fontSize: SizeConfig.textSizeVerySmall,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 20),
            CircleAvatar(
                child: Image.asset(
              'assets/images/person_profile.png',
              fit: BoxFit.cover,
            )),
          ],
        ),
      ),
    );
