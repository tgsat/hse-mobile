import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hse_product/core/presentation/blocs/email_bloc/email_bloc.dart';
import 'package:hse_product/core/presentation/blocs/name_bloc/name_bloc.dart';
import 'package:hse_product/core/presentation/blocs/single_attachment_bloc/single_attachment_bloc.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_primary.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/di/injection_container.dart';
import 'package:hse_product/features/project/presentation/bloc/project_bloc/project_bloc.dart';
import 'package:hse_product/features/project/presentation/widgets/body_form_project.dart';

class ProjectFormPage extends StatelessWidget {
  const ProjectFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarPrimary(context, title: Dictionary.info_proyek),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => sl<ProjectBloc>(),
          ),
          BlocProvider(
            create: (context) => sl<SingleAttachmentBloc>(),
          ),
          BlocProvider(
            create: (context) => sl<NameBloc>()..add(NameStarted()),
          ),
          BlocProvider(
            create: (context) => sl<EmailBloc>()..add(EmailStarted()),
          ),
        ],
        child: BodyFormProject(),
      ),
    );
  }
}
