import 'package:flutter/material.dart';

class CustomItemCard extends StatelessWidget {
  final String assets;

  final Widget? widgetall;
  const CustomItemCard({
    Key? key,
    required this.assets,
    required this.widgetall,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Container(
          padding: EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[_itemStatus(), widgetall!],
          ),
        ),
      ),
    );
  }

  _itemStatus() => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(50)),
            width: 20,
            height: 20,
            child: Image.asset(
              assets,
              fit: BoxFit.cover,
            ),
          ),
        ],
      );
}
