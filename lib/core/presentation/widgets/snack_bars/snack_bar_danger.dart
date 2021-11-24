import 'package:flutter/material.dart';

buildDangerSnackbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.orangeAccent,
      content: Text("$message"),
    ),
  );
}
