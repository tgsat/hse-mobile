import 'package:hse_product/core/domain/entities/links.dart';

class LinksModel {
  LinksModel({
    this.first,
    this.last,
    this.prev,
    this.next,
  });

  String? first;
  String? last;
  dynamic prev;
  dynamic next;

  Links toEntity() {
    return Links(
      first: first,
      last: last,
      prev: prev,
      next: next,
    );
  }

  factory LinksModel.fromJson(Map<String, dynamic> json) => LinksModel(
        first: json["first"] == null ? null : json["first"],
        last: json["last"] == null ? null : json["last"],
        prev: json["prev"],
        next: json["next"],
      );

  Map<String, dynamic> toJson() => {
        "first": first == null ? null : first,
        "last": last == null ? null : last,
        "prev": prev,
        "next": next,
      };
}
