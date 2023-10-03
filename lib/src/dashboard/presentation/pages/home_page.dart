import 'package:ecommerce_fe/common/theme/colors.dart';
import 'package:ecommerce_fe/common/theme/spacing.dart';
import 'package:ecommerce_fe/common/theme/textstyle.dart';
import 'package:ecommerce_fe/src/banner/bloc/banner_bloc.dart';
import 'package:ecommerce_fe/src/banner/presentation/widgets/home_banner.dart';
import 'package:ecommerce_fe/src/category/bloc/get_categories/get_categories_bloc.dart';
import 'package:ecommerce_fe/src/dashboard/presentation/widgets/home_card.dart';
import 'package:ecommerce_fe/src/dashboard/presentation/widgets/home_cart_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController? pageController;

  get image => null;

  @override
  void initState() {
    pageController = PageController();
    context.read<BannerBloc>().add(const BannerEvent.doGet());
    context.read<GetCategoriesBloc>().add(const GetCategoriesEvent.doGet());
    super.initState();
  }

  @override
  void dispose() {
    pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Dwelling!',
                      style: AppText.blackBold.copyWith(fontSize: 20),
                    ),
                    const HomeCartButton(),
                  ],
                ),
                AppSpacing.height(24),
                const HomeCard(),
                AppSpacing.height(24),
                HomeBanner(pageController: pageController!),
                AppSpacing.height(14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Kategori',
                      style: AppText.blackSemiBold.copyWith(fontSize: 16),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Lihat Semua',
                        style: AppText.orangeMedium,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 89,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      List<String> label = [
                        'Meja',
                        'Kursi',
                        'Lemari',
                        'Kabinet',
                        'Lampu',
                        'Sofa',
                      ];

                      List<String> icon = [
                        'assets/icons/ic_table.png',
                        'assets/icons/ic_chair.png',
                        'assets/icons/ic_wardrobe.png',
                        'assets/icons/ic_cabinet.png',
                        'assets/icons/ic_lamp.png',
                        'assets/icons/ic_sofa.png',
                      ];
                      return Container(
                        margin: const EdgeInsets.only(right: 24),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {},
                              splashColor: AppColor.tropicalBlue,
                              child: Container(
                                width: 60,
                                height: 60,
                                padding: const EdgeInsets.all(12),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColor.tropicalBlue,
                                ),
                                child: FadeInImage(
                                  placeholder: const AssetImage('assets/images/img_placeholder.png'),
                                  image: AssetImage(icon[index]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            AppSpacing.height(7),
                            Text(
                              label[index],
                              style: AppText.blackRegular.copyWith(fontSize: 16),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
