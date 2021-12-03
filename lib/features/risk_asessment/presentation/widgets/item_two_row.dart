import 'package:flutter/material.dart';

itemTwoRowRisk(String title, String content, String title2, String content2) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            title,
            style: TextStyle(color: Colors.black),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(': $content', style: TextStyle(color: Colors.black)),
        ),
        Expanded(
          flex: 1,
          child: Text(
            title2,
            style: TextStyle(color: Colors.black),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(': $content2', style: TextStyle(color: Colors.black)),
        ),
      ],
    );
