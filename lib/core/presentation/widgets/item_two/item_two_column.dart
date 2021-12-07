import 'package:flutter/material.dart';

itemSingleRow(String title, String content) => Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            title,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(child: Text(': $content')),
        ),
      ],
    );
itemTwoColumnWithImage(String title, Widget widgets) => Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
              ),
            ],
          ),
          Container(child: widgets),
        ],
      ),
    );
