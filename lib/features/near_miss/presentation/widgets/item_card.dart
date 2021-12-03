import 'package:flutter/material.dart';

class ItemCardNearMiss extends StatelessWidget {
  final String assets;
  final Widget widget1;
  final Widget widget2;
  final Widget widget3;
  final Widget widget4;
  final Widget widget5;
  const ItemCardNearMiss({
    Key? key,
    required this.assets,
    required this.widget1,
    required this.widget2,
    required this.widget3,
    required this.widget4,
    required this.widget5,
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
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                child: widget1,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                child: widget2,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                child: widget3,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                child: widget4,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                child: widget5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
