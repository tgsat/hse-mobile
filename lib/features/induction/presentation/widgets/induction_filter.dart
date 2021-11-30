import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/buttons/button_search_filter.dart';
import 'package:hse_product/core/presentation/widgets/dropdowns/dropdown_filter.dart';
import 'package:hse_product/core/presentation/widgets/text_fields/text_field_filter.dart';
import 'package:hse_product/core/presentation/widgets/text_fields/text_field_general.dart';
import 'package:hse_product/core/utils/translations/locale_keys.g.dart';
import 'package:hse_product/core/utils/values/color_config.dart';
import 'package:easy_localization/easy_localization.dart';

class InductionFilter extends StatefulWidget {
  @override
  _InductionFilterState createState() => _InductionFilterState();
}

class _InductionFilterState extends State<InductionFilter> {
  final _statusFilter = ["Approved", "OnProses", "Reject"];
  final _searchCont = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: DropdownFilter(
              hint: LocaleKeys.status.tr(),
              press: (selectedItem) {},
              listDropdownItem: _statusFilter
                  .map(
                    (item) => DropdownMenuItem(
                      child: Text(
                        item,
                      ),
                      value: item,
                    ),
                  )
                  .toList(),
              selectedItem: null,
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: TextFieldFilter(
              cont: _searchCont,
              hint: LocaleKeys.search.tr(),
            ),
          ),
          SizedBox(width: 8),
          ButtonSearchFilter(),
        ],
      ),
    );
  }
}
