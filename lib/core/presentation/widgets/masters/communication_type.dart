import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hse_product/core/presentation/blocs/communication_type_bloc/communication_type_bloc.dart';
import 'package:hse_product/core/presentation/widgets/dropdowns/dropdown_general.dart';
import 'package:hse_product/core/presentation/widgets/shimmers/shimmer_list_vertical.dart';
import 'package:hse_product/core/presentation/widgets/text_fields/text_field_general.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/core/utils/values/size_config.dart';

class CommunicationType extends StatelessWidget {
  final Function(String selectedItem)? press;
  final Function(String selectedItem)? onSuccess;
  final Function(String value)? onInput;

  const CommunicationType({Key? key, this.press, this.onSuccess, this.onInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: SizeConfig.marginForm),
      child: BlocConsumer<CommunicationTypeBloc, CommunicationTypeState>(
        listener: (context, state) {
          if (state is CommunicationTypeSuccess) {
            if (state.selectedItem != null) {
              if (onSuccess != null) onSuccess!(state.selectedItem!);
            }
          }
        },
        builder: (context, state) {
          if (state is CommunicationTypeSuccess) {
            return Column(
              children: [
                DropdownGeneral(
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
                  hint: Dictionary.tipe_komunikasi,
                  press: (value) {
                    BlocProvider.of<CommunicationTypeBloc>(context)
                        .add(CommunicationTypeSelected(selected: value));
                    if (press != null) press!(value);
                  },
                ),
                SizedBox(height: SizeConfig.marginForm),
                if (state.selectedItem == Dictionary.lainnya_sebutkan)
                  TextFeldGeneral(
                    label: Dictionary.lainnya_sebutkan,
                    onChange: onInput,
                  ),
              ],
            );
          } else if (state is CommunicationTypeInProgress) {
            return ShimmerListVertical();
          } else {
            return ShimmerListVertical();
          }
        },
      ),
    );
  }
}
