import 'package:ecommerce_fe/router/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthLocalDatasource {
  static Future directToHome(BuildContext context) async {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        context.goNamed(Routes.dashboard);
      },
    );
  }
}
