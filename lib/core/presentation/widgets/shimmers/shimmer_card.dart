import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:hse_product/core/utils/values/color_config.dart';

class ShimmerCard extends StatelessWidget {
  final double? height;

  const ShimmerCard({Key? key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorConfig.greyShimmer,
      highlightColor: Colors.white,
      child: Container(
        width: double.infinity,
        height: height ?? 55,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
