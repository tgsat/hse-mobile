import 'package:flutter/material.dart';

class DropdownFilter extends StatefulWidget {
  final listDropdownItem;
  final selectedItem;
  final String hint;
  final Function(dynamic selectedItem) press;

  const DropdownFilter(
      {Key? key,
      required this.listDropdownItem,
      required this.selectedItem,
      required this.hint,
      required this.press})
      : super(key: key);

  @override
  _DropdownFilterState createState() => _DropdownFilterState();
}

class _DropdownFilterState extends State<DropdownFilter> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
        hint: Text(widget.hint, style: TextStyle(fontSize: 14.0)),
        items: widget.listDropdownItem,
        onChanged: (val) {
          widget.press(val);
        },
      ),
    );
  }
}
