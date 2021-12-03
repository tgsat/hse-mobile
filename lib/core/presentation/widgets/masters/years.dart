import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hse_product/core/presentation/blocs/years_bloc/years_bloc.dart';
import 'package:hse_product/core/presentation/widgets/dropdowns/dropdown_general.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';

class Years extends StatelessWidget {
  final Function(int selectedItem)? press;
  final Function(int selectedItem)? onSuccess;
  final Function(int value)? onInput;

  const Years({Key? key, this.press, this.onSuccess, this.onInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: SizeConfig.marginForm),
      child: BlocConsumer<YearsBloc, YearsState>(
        listener: (context, state) {
          if (state is YearsSuccess) {
            if (onSuccess != null) onSuccess!(state.selectedItem);
          }
        },
        builder: (context, state) {
          if (state is YearsSuccess) {
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
              hint: Dictionary.tahun,
              press: (value) {
                BlocProvider.of<YearsBloc>(context)
                    .add(YearsSelected(selected: value));
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
