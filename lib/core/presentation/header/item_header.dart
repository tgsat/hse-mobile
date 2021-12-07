import 'package:flutter/material.dart';

itemTextHeader(Color iColor, String title) => Container(
      width: double.infinity,
      color: iColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(2),
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
