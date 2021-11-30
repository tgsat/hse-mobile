import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class InductionItem extends StatelessWidget {
  const InductionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        padding: EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _itemStatus(),
            _itemRow(
              firstRow: LocaleKeys.title.tr(),
              secondRow: LocaleKeys.title.tr(),
            ),
            _itemRow(
              firstRow: LocaleKeys.start_date.tr(),
              secondRow: LocaleKeys.start_date.tr(),
            ),
            _itemRow(
              firstRow: LocaleKeys.end_date.tr(),
              secondRow: LocaleKeys.end_date.tr(),
            ),
            _itemRow(
              firstRow: LocaleKeys.status.tr(),
              secondRow: LocaleKeys.status.tr(),
            ),
          ],
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
              'assets/images/approved.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      );

  _itemRow({required String firstRow, required String secondRow}) => Container(
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
