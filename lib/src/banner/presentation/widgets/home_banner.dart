// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_fe/common/theme/shimmer.dart';
import 'package:ecommerce_fe/src/banner/bloc/banner_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ecommerce_fe/common/domain/domain.dart';
import 'package:ecommerce_fe/common/theme/colors.dart';
import 'package:ecommerce_fe/common/theme/spacing.dart';

class HomeBanner extends StatelessWidget {
  final PageController pageController;
  const HomeBanner({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BannerBloc, BannerState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return AppShimmer.homeBanner(context);
          },
          success: (bannersData) {
            return Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: PageView.builder(
                    controller: pageController,
                    scrollDirection: Axis.horizontal,
                    itemCount: bannersData.data?[0].attributes?.images?.data?.length,
                    itemBuilder: (context, index) {
                      String? imageUrl = bannersData.data?[0].attributes?.images?.data?[index].attributes?.url;
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: FadeInImage(
                          placeholder: const AssetImage('assets/images/img_placeholder.png'),
                          image: NetworkImage('${AppDomain.fileUrl}$imageUrl'),
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
                AppSpacing.height(12),
                SmoothPageIndicator(
                  count: bannersData.data![0].attributes!.images!.data!.length,
                  controller: pageController,
                  effect: const WormEffect(
                    activeDotColor: AppColor.midnightBlue,
                    dotColor: AppColor.tropicalBlue,
                    spacing: 4,
                    dotWidth: 20,
                    dotHeight: 5,
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
