import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/induction/presentation/pages/induction_detail_page.dart';

import 'induction_filter.dart';
import 'induction_item.dart';

class InductionBody extends StatelessWidget {
  const InductionBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(SizeConfig.marginActivity),
      child: Column(
        children: [
          InductionFilter(),
          SizedBox(height: 10.0),
          Divider(
            color: Colors.grey.shade100,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => InductionDetailPage()));
                  },
                  child: InductionItem(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
