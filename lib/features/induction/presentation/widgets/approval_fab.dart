import 'package:flutter/material.dart';

class ApprovalButton extends StatelessWidget {
  const ApprovalButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      //will break to another line on overflow
      direction: Axis.horizontal, //use vertical to show  on vertical axis
      children: <Widget>[
        Container(
            margin: EdgeInsets.all(10),
            child: FloatingActionButton(
              onPressed: () {
                //action code for button 2
              },
              backgroundColor: Colors.red,
              child: Icon(Icons.close),
            )), // button first

        Container(
          margin: EdgeInsets.all(10),
          child: FloatingActionButton(
              onPressed: () {
                //action code for button 2
              },
              backgroundColor: Colors.green,
              child: Icon(Icons.check)),
        ) // button second

        // Add more buttons here
      ],
    );
  }
}
