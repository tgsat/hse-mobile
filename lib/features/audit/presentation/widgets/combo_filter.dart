import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/text_fields/text_field_general.dart';
import 'package:hse_product/core/utils/values/color_config.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';

class ComboFilterAudit extends StatelessWidget {
  final searchCont = TextEditingController();
  var _statusFilter = ["Approved", "OnProses", "Reject"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextFeldGeneral(
                    hint: Dictionary.search,
                    hintStyle: Colors.grey[600],
                    controller: searchCont,
                    borderSide: Colors.transparent,
                    inputType: TextInputType.text,
                    isEnable: true,
                    contenPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  )),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: DropdownButton(
                  underline: Container(),
                  isExpanded: true,
                  // value: _value,
                  hint: Text('Status', style: TextStyle(fontSize: 14.0)),
                  items: _statusFilter.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (val) {
                    // setState(() {
                    //   _value = val;
                    // });
                    // widget.onChanged(val);
                    print('value onChanged : $val');
                  },
                ),
              ),
            ),
          ),
          SizedBox(width: 8),
          Container(
              padding: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: ColorConfig.primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Icon(Icons.search, color: Colors.white)),
        ],
      ),
    );
  }
}
