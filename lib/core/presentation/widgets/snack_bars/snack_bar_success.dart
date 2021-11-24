import 'package:flutter/material.dart';

buildSuccessSnackbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.green,
      content: Text("$message"),
    ),
  );
}
