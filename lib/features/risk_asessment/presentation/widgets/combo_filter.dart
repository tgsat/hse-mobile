import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/text_fields/text_field_general.dart';
import 'package:hse_product/core/utils/values/color_config.dart';

class ComboFilterRiskAsessment extends StatelessWidget {
  final noRegisterCont = TextEditingController();
  final headerCont = TextEditingController();
  var proyekFilter = ["D301-15241", "D301-15242", "D301-15243"];
  DateTime? selectedCont;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: Row(
        children: [
          Expanded(
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
                  hint: 'Register',
                  hintStyle: Colors.grey[600],
                  controller: noRegisterCont,
                  borderSide: Colors.transparent,
                  inputType: TextInputType.text,
                  isEnable: true,
                  contenPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                )),
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
                  hint: Text('Proyek', style: TextStyle(fontSize: 14.0)),
                  items: proyekFilter.map((String value) {
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
          Expanded(
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
                  hint: 'Judul',
                  hintStyle: Colors.grey[600],
                  controller: headerCont,
                  borderSide: Colors.transparent,
                  inputType: TextInputType.text,
                  isEnable: true,
                  contenPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                )),
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
