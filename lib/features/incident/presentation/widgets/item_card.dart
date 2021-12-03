import 'package:flutter/material.dart';

class ItemCardIncident extends StatelessWidget {
  final Widget title1;
  final Widget title2;
  final String title1text;
  final String title2text;
  final String assets;
  final Widget widget1;
  final Widget widget2;
  final String bar3;
  final String bar3text;

  const ItemCardIncident({
    Key? key,
    required this.title1,
    required this.title2,
    required this.title1text,
    required this.title2text,
    required this.assets,
    required this.widget1,
    required this.widget2,
    required this.bar3,
    required this.bar3text,
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
                  child: Column(children: [
                    title1,
                    title2,
                  ])),
              SizedBox(height: 10),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                  child: widget1),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 12), child: widget2),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          bar3,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Text(bar3text,
                            style: TextStyle(color: Colors.black)),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
