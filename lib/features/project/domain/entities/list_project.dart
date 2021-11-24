import 'package:hse_product/core/data/models/links_model.dart';
import 'package:hse_product/core/domain/entities/links.dart';
import 'data_project.dart';

class ListProject {
  ListProject({
    this.data,
    this.links,
  });

  List<DataProject>? data;
  Links? links;
}
