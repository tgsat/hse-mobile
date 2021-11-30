import 'package:flutter/material.dart';

itemTwoRowsStart(
        String title, String content, String title2, String content2) =>
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

itemTwoColumnStartWithFolder(
        String title, String folder, String title2, String folder2) =>
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.black),
        ),
        Row(children: [
          Container(
            height: 40,
            width: 40,
            padding: EdgeInsets.all(4),
            child: Image.asset(
              folder,
              color: Colors.black,
              fit: BoxFit.cover,
            ),
          ),
        ]),
        Text(
          title2,
          style: TextStyle(color: Colors.black),
        ),
        Row(children: [
          Container(
            height: 40,
            width: 40,
            padding: EdgeInsets.all(4),
            child: Image.asset(
              folder2,
              color: Colors.black,
              fit: BoxFit.cover,
            ),
          ),
        ]),
      ],
    );

buildListBuilder(Widget widget) {
  return Expanded(
      child: ListView.builder(
    itemCount: 3,
    itemBuilder: (context, index) {
      return InkWell(
        onTap: () {},
        child: widget,
      );
    },
  ));
}
