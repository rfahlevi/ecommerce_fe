import 'package:ecommerce_fe/src/auth/data/datasource/local_datasource/auth_local_datasource.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    AuthLocalDatasource.directToHome(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeInImage(
          placeholder: const AssetImage('assets/images/img_placeholder.png'),
          image: const AssetImage('assets/images/img_logo.png'),
          width: MediaQuery.of(context).size.width / 2,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
