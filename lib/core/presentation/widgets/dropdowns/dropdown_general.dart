import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';

class DropdownGeneral extends StatefulWidget {
  final listDropdownItem;
  final selectedItem;
  final String hint;
  final Function(dynamic selectedItem) press;
  const DropdownGeneral({
    Key? key,
    required this.listDropdownItem,
    required this.selectedItem,
    required this.hint,
    required this.press,
  }) : super(key: key);
  @override
  _DropdownGeneralState createState() => _DropdownGeneralState();
}

class _DropdownGeneralState extends State<DropdownGeneral> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          hintText: widget.hint,
          labelText: widget.hint,
          labelStyle: TextStyle(color: Colors.grey),
          hintStyle: TextStyle(color: Colors.grey),
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(8),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        value: widget.selectedItem,
        isExpanded: true,
        onChanged: (value) {
          widget.press(value);
        },
        items: widget.listDropdownItem,
        validator: (value) =>
            value == null ? Dictionary.warning_empty_field : null,
      ),
    );
  }
}
