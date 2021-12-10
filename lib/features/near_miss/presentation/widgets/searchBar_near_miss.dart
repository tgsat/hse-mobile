import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/text_fields/text_field_general.dart';
import 'package:hse_product/core/utils/values/color_config.dart';

class SearchBarNearMiss extends StatefulWidget {
  const SearchBarNearMiss({Key? key}) : super(key: key);

  @override
  _SearchBarNearMissState createState() => _SearchBarNearMissState();
}

class _SearchBarNearMissState extends State<SearchBarNearMiss>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  DateTime selectedDate = DateTime.now();
  var _kategoriFilter = ["Proyek", "Tgl Kejadian", "Lokasi", "Kondisi"];
  var _proyekFilter = ["D111-14437", "D301-15488", "D301-15445", "D301-15586"];
  var _kondisiFilter = ["Belum Diketahui", "Telah Diketahui", "Penyelidikan"];
  var _value;

  @override
  void initState() {
    _value = 'Proyek';
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
          _value == 'Proyek'
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
                        hint: Text('D111-14437',
                            style: TextStyle(fontSize: 14.0)),
                        items: _proyekFilter.map((String value) {
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
          _value == 'Tgl Kejadian'
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
                        child: InkWell(
                          child: TextFeldGeneral(
                            isEnable: false,
                            borderSide: Colors.transparent,
                            contenPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            hint: "${selectedDate.toLocal()}".split(' ')[0],
                          ),
                          onTap: () {
                            _selectDate(context);
                          },
                        )),
                  ),
                )
              : Container(),
          _value == 'Lokasi'
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
                          hint: 'Lokasi',
                          borderSide: Colors.transparent,
                          contenPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        )),
                  ),
                )
              : Container(),
          _value == 'Kondisi'
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
                        hint: Text('Belum Diketahui',
                            style: TextStyle(fontSize: 14.0)),
                        items: _kondisiFilter.map((String value) {
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
          Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: ColorConfig.primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Icon(Icons.search, size: 20, color: Colors.white)),
        ],
      ),
    );
  }
}
