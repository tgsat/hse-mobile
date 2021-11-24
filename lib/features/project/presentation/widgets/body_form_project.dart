import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hse_product/core/presentation/widgets/shimmers/shimmer_list_vertical.dart';
import 'package:hse_product/core/presentation/widgets/snack_bars/snack_bar_error.dart';
import 'package:hse_product/core/presentation/widgets/succes_submit.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/project/presentation/bloc/project_bloc/project_bloc.dart';
import 'form_project.dart';

class BodyFormProject extends StatelessWidget {
  const BodyFormProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.maxWidth(context),
      height: SizeConfig.maxHeight(context),
      margin: EdgeInsets.all(SizeConfig.marginActivity),
      child: Center(
        child: SingleChildScrollView(
          child: BlocConsumer<ProjectBloc, ProjectState>(
            listener: (context, state) {
              if (state is ProjectFailure)
                buildErrorSnackbar(context, state.message);
            },
            builder: (context, state) {
              return BlocBuilder<ProjectBloc, ProjectState>(
                builder: (context, state) {
                  if (state is ProjectSuccess)
                    return SuccessSubmit(
                      onPressed: () =>
                          BlocProvider.of<ProjectBloc>(context).add(
                        ProjectRestarted(),
                      ),
                    );
                  else if (state is ProjectInProgress)
                    return ShimmerListVertical(length: 10);
                  else
                    return FormProject();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
