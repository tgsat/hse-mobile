import 'package:flutter/material.dart';

class CustomCard {
  static BoxDecoration cardPrimary({Color color = Colors.white}) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
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
