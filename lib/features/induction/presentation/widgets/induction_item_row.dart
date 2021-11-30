import 'package:flutter/material.dart';

class InductionItemRow extends StatelessWidget {
  final String firstRow;
  final String secondRow;

  const InductionItemRow(
      {Key? key, required this.firstRow, required this.secondRow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
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
  }
}
