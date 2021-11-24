import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/size_config.dart';

class TextFeldGeneral extends StatefulWidget {
  final String? label;
  final String? hint;

  final TextEditingController? controller;
  final bool isEnable;
  final bool isRequired;
  final bool isValidateEmail;
  final Function(String onChange)? onChange;
  final TextInputType inputType;
  final String? initialValue;
  final Widget? sufix;

  const TextFeldGeneral({
    Key? key,
    this.label,
    this.hint,
    this.controller,
    this.isEnable = true,
    this.isRequired = true,
    this.isValidateEmail = false,
    this.onChange,
    this.inputType = TextInputType.text,
    this.initialValue,
    this.sufix,
  }) : super(key: key);

  @override
  _TextFeldGeneralState createState() => _TextFeldGeneralState();
}

class _TextFeldGeneralState extends State<TextFeldGeneral> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: SizeConfig.marginForm),
      child: TextFormField(
        controller: widget.controller,
        enabled: widget.isEnable,
        initialValue: widget.initialValue,
        decoration: InputDecoration(
          suffix: widget.sufix,
          hintText: widget.hint ?? widget.label,
          labelText: widget.label,
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
        validator: (value) {
          if (widget.isRequired) {
            if (value != null) {
              if (widget.isValidateEmail &&
                  !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(widget.controller!.text)) {
                return 'Email Format Required';
              } else if (value.isEmpty)
                return '${widget.label ?? 'Field'} Required';
            }
          }
        },
        keyboardType: widget.inputType,
        onChanged: (value) {
          if (widget.onChange != null) widget.onChange!(value);
        },
      ),
    );
  }
}
