import 'package:flutter/material.dart';

sparatorCenterText(BuildContext context, String title) {
  return Row(children: <Widget>[
    Expanded(
      child: new Container(
          margin: const EdgeInsets.only(right: 5),
          child: Divider(
            color: Colors.black,
            height: 50,
          )),
    ),
    Text(title, style: Theme.of(context).textTheme.bodyText1),
    Expanded(
      child: new Container(
          margin: const EdgeInsets.only(left: 5),
          child: Divider(
            color: Colors.black,
            height: 50,
          )),
    ),
  ]);
}
