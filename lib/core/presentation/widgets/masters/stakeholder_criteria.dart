import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hse_product/core/presentation/blocs/stakeholder_criteria_bloc/stakeholder_criteria_bloc.dart';
import 'package:hse_product/core/presentation/widgets/dropdowns/dropdown_general.dart';
import 'package:hse_product/core/presentation/widgets/shimmers/shimmer_list_vertical.dart';
import 'package:hse_product/core/presentation/widgets/text_fields/text_field_general.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';

class StakeholderCriteria extends StatelessWidget {
  final Function(String selectedItem)? press;
  final Function(String selectedItem)? onSuccess;
  final Function(String value)? onInput;

  const StakeholderCriteria(
      {Key? key, this.press, this.onSuccess, this.onInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: SizeConfig.marginForm),
      child: BlocConsumer<StakeholderCriteriaBloc, StakeholderCriteriaState>(
        listener: (context, state) {
          if (state is StakeholderCriteriaSuccess) {
            if (state.selectedItem != null) {
              if (onSuccess != null) onSuccess!(state.selectedItem!);
            }
          }
        },
        builder: (context, state) {
          if (state is StakeholderCriteriaSuccess) {
            return Column(
              children: [
                DropdownGeneral(
                  listDropdownItem: state.list
                      .map(
                        (item) => DropdownMenuItem(
                          child: Text(item),
                          value: item,
                        ),
                      )
                      .toList(),
                  selectedItem: state.selectedItem,
                  hint: Dictionary.pilih_kriteria,
                  press: (value) {
                    BlocProvider.of<StakeholderCriteriaBloc>(context)
                        .add(StakeholderCriteriaSelected(selected: value));
                    if (press != null) press!(value);
                  },
                ),
                SizedBox(height: SizeConfig.marginForm),
                if (state.selectedItem == Dictionary.lainnya_sebutkan)
                  TextFeldGeneral(
                    label: Dictionary.lainnya_sebutkan,
                    onChange: onInput,
                  ),
                if (state.selectedItem == Dictionary.badan_usaha ||
                    state.selectedItem == Dictionary.instansi_pemerintah)
                  TextFeldGeneral(
                    label: Dictionary.jabatan,
                    hint: Dictionary.tulis_jabatan,
                    onChange: onInput,
                  ),
              ],
            );
          } else if (state is StakeholderCriteriaInProgress) {
            return ShimmerListVertical();
          } else {
            return ShimmerListVertical();
          }
        },
      ),
    );
  }
}
