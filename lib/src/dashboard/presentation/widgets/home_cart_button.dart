import 'package:ecommerce_fe/common/theme/colors.dart';
import 'package:ecommerce_fe/common/theme/textstyle.dart';
import 'package:flutter/material.dart';

class HomeCartButton extends StatelessWidget {
  const HomeCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(12),
        backgroundColor: AppColor.white,
        side: const BorderSide(color: AppColor.tropicalBlue),
      ),
      child: Badge(
        largeSize: 14,
        backgroundColor: AppColor.rose,
        label: Text(
          '0',
          style: AppText.whiteMedium,
        ),
        child: const FadeInImage(
          placeholder: AssetImage('assets/images/img_placeholder.png'),
          image: AssetImage('assets/icons/ic_cart.png'),
          fit: BoxFit.cover,
          width: 26,
          height: 26,
        ),
      ),
    );
  }
}
