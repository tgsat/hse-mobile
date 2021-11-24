import 'package:hse_product/core/data/models/links_model.dart';
import 'package:hse_product/features/project/domain/entities/data_project.dart';
import 'package:hse_product/features/project/domain/entities/list_project.dart';

import 'data_project_model.dart';

class ListProjectModel {
  ListProjectModel({
    this.data,
    this.links,
  });

  List<DataProjectModel>? data;
  LinksModel? links;

  ListProject toEntity() => ListProject(
        data: data == null
            ? null
            : List<DataProject>.from(
                data!.map(
                  (x) => x.toEntity(),
                ),
              ),
        links: links == null ? null : links!.toEntity(),
      );

  factory ListProjectModel.fromJson(Map<String, dynamic> json) =>
      ListProjectModel(
        data: json["data"] == null
            ? null
            : List<DataProjectModel>.from(
                json["data"].map((x) => DataProjectModel.fromJson(x))),
        links:
            json["links"] == null ? null : LinksModel.fromJson(json["links"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "links": links == null ? null : links!.toJson(),
      };
}
