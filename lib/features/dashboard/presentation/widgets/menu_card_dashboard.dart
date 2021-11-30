import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/card/custom_card.dart';

class MenuCardDashboard extends StatelessWidget {
  final Function() press;
  final String title;
  final String assets;
  const MenuCardDashboard(
      {Key? key,
      required this.press,
      required this.title,
      required this.assets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: CustomCard.cardPrimary(),
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: Image.asset(
                  assets,
                  fit: BoxFit.fill,
                  color: Colors.black,
                ),
                height: 35,
                width: 35,
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
