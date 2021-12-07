import 'package:flutter/material.dart';
import 'package:hse_product/core/utils/values/color_config.dart';
import 'package:hse_product/core/utils/values/size_config.dart';

class TextFeldGeneral extends StatefulWidget {
  final String? label;
  final String? hint;
  final Color? hintStyle;
  final double? hintSize;
  final EdgeInsetsGeometry? contenPadding;
  final TextEditingController? controller;
  final bool isPasswordType;
  final bool validatePasswordMatch;
  final bool isEnable;
  final bool isRequired;
  final bool isValidateEmail;
  final Function(String onChange)? onChange;
  final TextInputType inputType;
  final String? initialValue;
  final Widget? sufix;
  final Widget? sufixIcon;
  final Widget? prefixIcon;
  final Color? borderSide;

  const TextFeldGeneral({
    Key? key,
    this.label,
    this.hint,
    this.hintStyle,
    this.hintSize,
    this.contenPadding,
    this.controller,
    this.isEnable = true,
    this.isRequired = true,
    this.isValidateEmail = false,
    this.validatePasswordMatch = false,
    this.isPasswordType = false,
    this.onChange,
    this.inputType = TextInputType.text,
    this.initialValue,
    this.sufix,
    this.sufixIcon,
    this.prefixIcon,
    this.borderSide,
  }) : super(key: key);

  @override
  _TextFeldGeneralState createState() => _TextFeldGeneralState();
}

class _TextFeldGeneralState extends State<TextFeldGeneral> {
  bool _isError = false;
  bool _isObscurePass = true;
  String? _messageError;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: SizeConfig.marginForm),
      child: TextFormField(
        controller: widget.controller,
        enabled: widget.isEnable,
        initialValue: widget.initialValue,
        obscureText: (widget.isPasswordType) ? _isObscurePass : false,
        maxLines: _isObscurePass ? 1 : null,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: widget.contenPadding,
          suffix: widget.sufix,
          suffixIcon: widget.isPasswordType
              ? IconButton(
                  icon: Icon(
                    _isObscurePass ? Icons.visibility_off : Icons.visibility,
                    size: 18,
                    color: ColorConfig.primaryColor,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscurePass = !_isObscurePass;
                    });
                  })
              : widget.sufixIcon,
          prefixIcon: widget.prefixIcon,
          hintText: widget.hint ?? widget.label,
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
        validator: (value) {
          if (widget.isRequired) {
            if (value != null) {
              if (widget.isValidateEmail &&
                  !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(widget.controller!.text)) {
                return 'Email Format Required';
              } else if (value.isEmpty) {
                return '${widget.label ?? 'Field'} Required';
              } else if (widget.validatePasswordMatch) {
                setState(() {
                  _isError = true;
                  _messageError = 'Password Dont match';
                });
                return _messageError;
              }
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
