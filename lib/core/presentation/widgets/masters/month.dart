import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hse_product/core/presentation/blocs/month_bloc/month_bloc.dart';
import 'package:hse_product/core/presentation/widgets/dropdowns/dropdown_general.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';

class Month extends StatelessWidget {
  final Function(String selectedItem)? press;
  final Function(String selectedItem)? onSuccess;
  final Function(String value)? onInput;

  const Month({Key? key, this.press, this.onSuccess, this.onInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: SizeConfig.marginForm),
      child: BlocConsumer<MonthBloc, MonthState>(
        listener: (context, state) {
          if (state is MonthSuccess) {
            if (onSuccess != null) onSuccess!(state.selectedCode);
          }
        },
        builder: (context, state) {
          if (state is MonthSuccess) {
            return DropdownGeneral(
              listDropdownItem: state.list
                  .map(
                    (item) => DropdownMenuItem(
                      child: Text(
                        item.toString(),
                      ),
                      value: item,
                    ),
                  )
                  .toList(),
              selectedItem: state.selectedItem,
              hint: Dictionary.bulan,
              press: (value) {
                BlocProvider.of<MonthBloc>(context)
                    .add(MonthSelected(selected: value));
                if (press != null) press!(value);
              },
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
