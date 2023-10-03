import 'package:ecommerce_fe/common/theme/theme_data.dart';
import 'package:ecommerce_fe/router/router.dart';
import 'package:ecommerce_fe/src/auth/bloc/login/login_bloc.dart';
import 'package:ecommerce_fe/src/auth/bloc/register_bloc/register_bloc_bloc.dart';
import 'package:ecommerce_fe/src/banner/bloc/banner_bloc.dart';
import 'package:ecommerce_fe/src/banner/data/datasource/banner_datasource.dart';
import 'package:ecommerce_fe/src/category/bloc/get_categories/get_categories_bloc.dart';
import 'package:ecommerce_fe/src/category/data/datasource/category_datasource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => RegisterBlocBloc()),
        BlocProvider(create: (context) => LoginBloc()),
        BlocProvider(create: (context) => BannerBloc(BannerDatasource())),
        BlocProvider(create: (context) => GetCategoriesBloc(CategoryDatasource())),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Dwelling',
        theme: AppThemeData.dwellingThene,
        routerConfig: router,
      ),
    );
  }
}
