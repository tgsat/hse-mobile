import 'package:flutter/material.dart';

itemSingleRow(String title, String content) => Row(
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
          child: Container(
              child: Text(': $content', style: TextStyle(color: Colors.black))),
        ),
      ],
    );
itemTwoColumnWithImage(String title, Widget widgets) => Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        Container(child: widgets),
      ],
    );
