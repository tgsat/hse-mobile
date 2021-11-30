import 'package:flutter/material.dart';
import 'package:hse_product/core/presentation/widgets/text_fields/text_field_general.dart';
import 'package:hse_product/core/utils/values/color_config.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({Key? key}) : super(key: key);

  @override
  _SearchFilterState createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  final searchCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Container(
                child: TextFeldGeneral(
              hint: Dictionary.search,
              hintStyle: Colors.black,
              controller: searchCont,
              inputType: TextInputType.text,
              isEnable: true,
              contenPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              sufixIcon: InkWell(
                child: Icon(Icons.search, color: ColorConfig.primaryColor),
                onTap: () {
                  print("cek");
                },
              ),
            )),
          ),
        ],
      ),
    );
  }
}
