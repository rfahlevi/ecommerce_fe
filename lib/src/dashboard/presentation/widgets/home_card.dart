import 'package:ecommerce_fe/common/theme/colors.dart';
import 'package:ecommerce_fe/common/theme/spacing.dart';
import 'package:ecommerce_fe/common/theme/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: AppColor.midnightBlue,
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    MdiIcons.shopping,
                    color: AppColor.orange,
                    size: 28,
                  ),
                  AppSpacing.width(7),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dipesan',
                        style: AppText.greyRegular,
                      ),
                      Text(
                        '1',
                        style: AppText.whiteSemiBold.copyWith(fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                width: 1,
                height: 24,
                decoration: const BoxDecoration(
                  color: AppColor.tropicalBlue,
                ),
              ),
              Row(
                children: [
                  Icon(
                    MdiIcons.truckFast,
                    color: AppColor.orange,
                    size: 28,
                  ),
                  AppSpacing.width(7),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dikirim',
                        style: AppText.greyRegular,
                      ),
                      Text(
                        '1',
                        style: AppText.whiteSemiBold.copyWith(fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                width: 1,
                height: 24,
                decoration: const BoxDecoration(
                  color: AppColor.tropicalBlue,
                ),
              ),
              Row(
                children: [
                  Icon(
                    MdiIcons.packageCheck,
                    color: AppColor.orange,
                    size: 28,
                  ),
                  AppSpacing.width(7),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Diterima',
                        style: AppText.greyRegular,
                      ),
                      Text(
                        '1',
                        style: AppText.whiteSemiBold.copyWith(fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
