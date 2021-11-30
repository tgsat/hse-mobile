import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/size_config.dart';

import 'induction_item_row.dart';

class InductionDetailBody extends StatelessWidget {
  const InductionDetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(SizeConfig.marginActivity),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Card(
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
                    children: <Widget>[
                      Row(
                        children: [
                          Expanded(
                            child: InductionItemRow(
                              firstRow: 'Lorem Ipsum',
                              secondRow: 'Lorem Ipsum',
                            ),
                          ),
                          Expanded(
                            child: InductionItemRow(
                              firstRow: 'Lorem Ipsum',
                              secondRow: 'Lorem Ipsum',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InductionItemRow(
                              firstRow: 'Lorem Ipsum',
                              secondRow: 'Lorem Ipsum',
                            ),
                          ),
                          Expanded(
                            child: InductionItemRow(
                              firstRow: 'Lorem Ipsum',
                              secondRow: 'Lorem Ipsum',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
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
                    children: <Widget>[
                      InductionItemRow(
                        firstRow: 'Lorem Ipsum',
                        secondRow: 'Lorem Ipsum',
                      ),
                      InductionItemRow(
                        firstRow: 'Lorem Ipsum',
                        secondRow: 'Lorem Ipsum',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
