import 'package:ecommerce_fe/common/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppShimmer {
  static homeBanner(BuildContext context) => SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 100.0,
        child: Shimmer.fromColors(
            baseColor: AppColor.tropicalBlue,
            highlightColor: AppColor.tropicalBlue.withAlpha(100),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColor.tropicalBlue,
              ),
            )),
      );
}
