import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:hse_product/core/presentation/widgets/empty_data.dart';
import 'package:hse_product/core/presentation/widgets/shimmers/shimmer_list_vertical.dart';
import 'package:hse_product/core/presentation/widgets/snack_bars/snack_bar_error.dart';
import 'package:hse_product/core/utils/values/size_config.dart';
import 'package:hse_product/features/project/presentation/bloc/list_project_bloc/list_project_bloc.dart';
import 'package:hse_product/features/project/presentation/pages/project_detail_page.dart';

import 'item_project.dart';

class BodyProject extends StatefulWidget {
  const BodyProject({Key? key}) : super(key: key);

  @override
  _BodyProjectState createState() => _BodyProjectState();
}

class _BodyProjectState extends State<BodyProject> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(SizeConfig.marginActivity),
      child: BlocConsumer<ListProjectBloc, ListProjectState>(
        listener: (context, state) {
          if (state is ListProjectFailure)
            buildErrorSnackbar(context, state.message);
        },
        builder: (context, state) {
          return BlocBuilder<ListProjectBloc, ListProjectState>(
            builder: (context, state) {
              if (state is ListProjectSuccess)
                return RefreshIndicator(
                  onRefresh: () async {
                    BlocProvider.of<ListProjectBloc>(context)
                        .add(ListProjectStarted());
                  },
                  child: LazyLoadScrollView(
                    onEndOfPage: () {
                      if (state.listProject.links!.next != null)
                        BlocProvider.of<ListProjectBloc>(context).add(
                            ListProjectNext(
                                url: state.listProject.links!.next ?? ''));
                    },
                    child: ListView.builder(
                      itemCount: state.listProject.links!.next != null
                          ? state.listProject.data!.length + 1
                          : state.listProject.data!.length,
                      itemBuilder: (context, index) {
                        if (index == state.listProject.data!.length)
                          return state.isLoadMore
                              ? Center(child: CircularProgressIndicator())
                              : Container();

                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProjectDetailPage(
                                  data: state.listProject.data![index],
                                ),
                              ),
                            );
                          },
                          child:
                              ItemProject(data: state.listProject.data![index]),
                        );
                      },
                    ),
                  ),
                );
              else if (state is ListProjectInProgress)
                return ShimmerListVertical(length: 5);
              else if (state is ListProjectEmpty)
                return EmptyDataPage();
              else
                return Container();
            },
          );
        },
      ),
    );
  }
}
