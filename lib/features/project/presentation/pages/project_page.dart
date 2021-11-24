import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hse_product/core/presentation/widgets/app_bars/app_bar_primary.dart';
import 'package:hse_product/core/utils/values/dictionary.dart';
import 'package:hse_product/di/injection_container.dart';
import 'package:hse_product/features/project/presentation/bloc/list_project_bloc/list_project_bloc.dart';
import 'package:hse_product/features/project/presentation/pages/project_form_page.dart';
import 'package:hse_product/features/project/presentation/widgets/body_project.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  final _listProjectBloc = sl<ListProjectBloc>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarPrimary(context, title: Dictionary.info_proyek),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => _listProjectBloc..add(ListProjectStarted()),
          ),
        ],
        child: BodyProject(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProjectFormPage()),
          ).then((value) => _listProjectBloc.add(ListProjectStarted()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
