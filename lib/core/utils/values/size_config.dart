import 'package:flutter/material.dart';

class SizeConfig {
  static const double textSizeVerySmall = 12.0;
  static const double textSizeSmall = 14.0;
  static const double textMedium = 16.0;
  static const double textBig = 18.0;
  static const double textLarge = 20.0;
  static const double textExtraLarge = 22.0;

  static const double marginActivity = 16.0;
  static const double marginForm = 8.0;
  static const double marginFab = 68.0;
  static const double marginCard = 2.0;

  static const double radiusCard = 8.0;
  static const double radiusMenuImages = 35;

  static const double imageCardNewsSize = 103;

  static maxWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static maxHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
