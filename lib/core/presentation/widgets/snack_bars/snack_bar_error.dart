import 'package:flutter/material.dart';

buildErrorSnackbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.redAccent,
      content: Text("$message"),
    ),
  );
}
