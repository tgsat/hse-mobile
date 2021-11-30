import 'package:flutter/material.dart';

class CustomCard {
  static BoxDecoration cardPrimary({Color color = Colors.white}) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: color,
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 5,
        ),
      ],
    );
  }
}
