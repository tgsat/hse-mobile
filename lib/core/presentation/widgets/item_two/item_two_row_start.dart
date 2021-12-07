import 'package:flutter/material.dart';

itemRow({required String firstRow, required String secondRow}) => Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Text(firstRow),
          ),
          Text(': '),
          Expanded(
            flex: 2,
            child: Text(secondRow),
          )
        ],
      ),
    );

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
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            ': $content',
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            title2,
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            ': $content2',
          ),
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
