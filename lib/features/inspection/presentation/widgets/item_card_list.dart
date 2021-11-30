import 'package:flutter/material.dart';

class ItemCardListInspection extends StatelessWidget {
  final String assets;
  final Widget widget1;
  final Widget widget2;
  const ItemCardListInspection({
    Key? key,
    required this.assets,
    required this.widget1,
    required this.widget2,
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
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
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
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                child: widget1,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                child: widget2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
