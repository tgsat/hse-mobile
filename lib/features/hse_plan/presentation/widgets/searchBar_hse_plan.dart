import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/buttons/button_search_filter.dart';
import 'package:hse_product/core/presentation/widgets/text_fields/text_field_general.dart';

class SearchBarHSEPLan extends StatefulWidget {
  const SearchBarHSEPLan({Key? key}) : super(key: key);

  @override
  _SearchBarHSEPLanState createState() => _SearchBarHSEPLanState();
}

class _SearchBarHSEPLanState extends State<SearchBarHSEPLan>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  DateTime selectedDate = DateTime.now();
  var _kategoriFilter = ["Unit Bisnis", "Status"];
  var _sattusFilter = ["Open", "Close"];
  var _value;

  @override
  void initState() {
    _value = 'Unit Bisnis';
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      height: 50,
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
                child: DropdownButton(
                  underline: Container(),
                  isExpanded: true,
                  value: _value,
                  hint: Text(
                    '- Pilih',
                    style: TextStyle(fontSize: 14.0),
                  ),
                  items: _kategoriFilter.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (val) {
                    setState(() {
                      _value = val;
                    });
                    // widget.onChanged(val);
                    print('value onChanged : $val');
                  },
                ),
              ),
            ),
          ),
          SizedBox(width: 8.0),
          _value == 'Unit Bisnis'
              ? Expanded(
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
                          isEnable: true,
                          hint: 'Unit Bisnis',
                          borderSide: Colors.transparent,
                          contenPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        )),
                  ),
                )
              : Container(),
          _value == 'Status'
              ? Expanded(
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
                        hint: Text('Open', style: TextStyle(fontSize: 14.0)),
                        items: _sattusFilter.map((String value) {
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
                )
              : Container(),
          SizedBox(width: 8.0),
          InkWell(
            onTap: () {},
            child: ButtonSearchFilter(),
          )
        ],
      ),
    );
  }
}
