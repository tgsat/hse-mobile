import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hse_product/core/presentation/blocs/age_bloc/age_bloc.dart';
import 'package:hse_product/core/presentation/widgets/dropdowns/dropdown_general.dart';
import 'package:hse_product/core/presentation/widgets/shimmers/shimmer_list_vertical.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';

class Age extends StatelessWidget {
  final Function(String selectedItem)? press;
  final Function(String selectedItem)? onSuccess;

  const Age({Key? key, this.press, this.onSuccess}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: SizeConfig.marginForm),
      child: BlocConsumer<AgeBloc, AgeState>(
        listener: (context, state) {
          if (state is AgeSuccess) {
            if (state.selectedItem != null) {
              if (onSuccess != null) onSuccess!(state.selectedItem!);
            }
          }
        },
        builder: (context, state) {
          if (state is AgeSuccess) {
            return DropdownGeneral(
              listDropdownItem: state.list
                  .map(
                    (item) => DropdownMenuItem(
                      child: Text(
                        item,
                      ),
                      value: item,
                    ),
                  )
                  .toList(),
              selectedItem: state.selectedItem,
              hint: Dictionary.usia,
              press: (value) {
                BlocProvider.of<AgeBloc>(context)
                    .add(AgeSelected(selected: value));
                if (press != null) press!(value);
              },
            );
          } else if (state is AgeInProgress) {
            return ShimmerListVertical();
          } else {
            return ShimmerListVertical();
          }
        },
      ),
    );
  }
}
