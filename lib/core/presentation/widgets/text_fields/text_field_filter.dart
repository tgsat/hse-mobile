import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/text_fields/text_field_general.dart';

class TextFieldFilter extends StatefulWidget {
  final TextEditingController cont;
  final String hint;
  const TextFieldFilter({
    Key? key,
    required this.cont,
    required this.hint,
  }) : super(key: key);

  @override
  _TextFieldFilterState createState() => _TextFieldFilterState();
}

class _TextFieldFilterState extends State<TextFieldFilter> {
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
      child: TextFeldGeneral(
        hint: widget.hint,
        hintStyle: Colors.grey[600],
        controller: widget.cont,
        borderSide: Colors.transparent,
        inputType: TextInputType.text,
        isEnable: true,
        contenPadding: EdgeInsets.all(8),
      ),
    );
  }
}
