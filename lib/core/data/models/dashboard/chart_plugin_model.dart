import 'package:flutter/material.dart';

class ChartPluginModel {
  final String x;
  final int y;

  ChartPluginModel({required this.x, required this.y});
}

class ListChartPluginModel {
  final String name;
  final Color color;
  final List<ChartPluginModel> list;

  ListChartPluginModel({
    required this.name,
    required this.color,
    required this.list,
  });
}
