import 'package:flutter/material.dart';

buildFloatingApproved(Function() onPress, Function() onPress2) {
  return Wrap(
    //will break to another line on overflow
    direction: Axis.horizontal, //use vertical to show  on vertical axis
    children: <Widget>[
      Container(
          margin: EdgeInsets.all(10),
          child: FloatingActionButton(
            onPressed: onPress,
            backgroundColor: Colors.red,
            child: Icon(Icons.close),
          )), // button first

      Container(
        margin: EdgeInsets.all(10),
        child: FloatingActionButton(
            onPressed: onPress2,
            backgroundColor: Colors.green,
            child: Icon(Icons.check)),
      ) // button second

      // Add more buttons here
    ],
  );
}
