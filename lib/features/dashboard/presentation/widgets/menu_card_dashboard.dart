import 'package:flutter/material.dart';

class MenuCardDashboard extends StatelessWidget {
  final String title;
  final String assets;
  const MenuCardDashboard({Key? key, required this.title, required this.assets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                child: Image.asset(
                  assets,
                  fit: BoxFit.fill,
                  color: Colors.black,
                ),
                height: 30,
                width: 30,
              ),
              SizedBox(height: 10),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
