import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_white.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/hse_plan/presentation/widgets/item_hse_plan.dart';

class HSEPlanDetail extends StatelessWidget {
  const HSEPlanDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWhite(Dictionary.detail_hse_plan, context),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: SizeConfig.marginForm),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ItemHSEPlan(),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Container(
                    height: 200,
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Wrap(
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
      ),
    );
  }
}
