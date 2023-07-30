import 'package:apple_shop/features/feature_home/presentation/screen/home_screen.dart';
import 'package:apple_shop/features/feature_main/presentation/screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/feature_login/presentation/bloc/login_bloc.dart';
import 'features/feature_login/presentation/screen/login_screen.dart';
import 'features/feature_sign_up/presentation/bloc/sign_up_bloc.dart';
import 'locator.dart';

void main() async {
  await setup();
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
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => locator<SignUpBloc>()),
            BlocProvider(create: (_) => locator<LoginBloc>()),
          ],
          child: MainScreen(),
        ),
      ),
    );
  }
}
