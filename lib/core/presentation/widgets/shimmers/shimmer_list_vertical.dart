import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:hse_product/core/utils/values/color_config.dart';

class ShimmerListVertical extends StatelessWidget {
  final int? length;

  const ShimmerListVertical({Key? key, this.length}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: length ?? 5,
      itemBuilder: (context, index) {
        return Container(
          //margin: EdgeInsets.symmetric(vertical: 20),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Shimmer.fromColors(
                baseColor: ColorConfig.greyShimmer,
                highlightColor: Colors.white,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 4.0),
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              Shimmer.fromColors(
                baseColor: Colors.white,
                highlightColor: ColorConfig.greyShimmer,
                child: ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  title: Container(
                    height: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
