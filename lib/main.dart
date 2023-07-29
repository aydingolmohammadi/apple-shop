import 'package:apple_shop/features/feature_all_product/presentation/screen/all_product_screen.dart';
import 'package:apple_shop/features/feature_login/presentation/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'features/feature_main/presentation/screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
        fontFamily: 'sm',
      ),
      home: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light.copyWith(
          statusBarColor: Colors.grey.shade200,
          systemNavigationBarColor: Colors.white,
        ),
        child: const LoginScreen(),
      ),
    );
  }
}
