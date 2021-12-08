import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';

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

class DropdownGeneralOffBorder extends StatefulWidget {
  final listDropdownItem;
  final selectedItem;
  final String hint;
  final String? label;
  final double? hintSize;
  final Color? hintStyle;
  final Color? borderSide;
  final Function(dynamic selectedItem) press;
  const DropdownGeneralOffBorder({
    Key? key,
    required this.listDropdownItem,
    required this.selectedItem,
    required this.hint,
    this.hintSize,
    this.hintStyle,
    this.label,
    required this.press,
    this.borderSide,
  }) : super(key: key);
  @override
  _DropdownGeneralOffBorderState createState() =>
      _DropdownGeneralOffBorderState();
}

class _DropdownGeneralOffBorderState extends State<DropdownGeneralOffBorder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          hintText: widget.hint,
          labelText: widget.label,
          labelStyle: TextStyle(color: Colors.grey),
          hintStyle: TextStyle(
              color: widget.hintStyle ?? Colors.grey,
              fontSize: widget.hintSize ?? SizeConfig.textSizeSmall),
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.borderSide ?? Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.borderSide ?? Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.borderSide ?? Colors.grey),
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
