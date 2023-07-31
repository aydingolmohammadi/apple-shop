import 'package:apple_shop/core/secure_storage/secure_storage.dart';
import 'package:apple_shop/features/feature_login/domain/entity/login_entity.dart';
import 'package:apple_shop/features/feature_sign_up/presentation/screen/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/page_route_animation.dart';
import '../../../feature_main/presentation/screen/main_screen.dart';
import '../../domain/params/login_param.dart';
import '../bloc/login_bloc.dart';
import '../bloc/ul_status.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController =
      TextEditingController(text: 'AydinTaeb');

  final TextEditingController passController =
      TextEditingController(text: '0441099211aT@');

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: const Color(0xff58AEE8),
        systemNavigationBarColor: Colors.white,
      ),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color(0xff3B5EDF),
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        end: Alignment.bottomCenter,
                        begin: Alignment.topCenter,
                        colors: [
                          Color(0xff58AEE8),
                          Color(0xff3B5EDF),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                SvgPicture.asset(
                                    'assets/images/apple_icon.svg'),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                const Text(
                                  'اپل شاپ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'sb',
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 40.0),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              TextFormField(
                                controller: usernameController,
                                decoration: InputDecoration(
                                  labelText: 'نام کاربری',
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(0xffD02026),
                                      width: 1.0,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(0xff3B5EDF),
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                controller: passController,
                                decoration: InputDecoration(
                                  labelText: 'رمز عبور',
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(0xffD02026),
                                      width: 1.0,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: Color(0xff3B5EDF),
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          BlocConsumer<LoginBloc, LoginState>(
                            listener: (context, state) {
                              if (state.ulStatus is UlCompleted) {
                                // final UlCompleted ulCompleted =
                                // state.ulStatus as UlCompleted;
                                // final LoginEntity loginEntity =
                                //     ulCompleted.loginEntity;
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  pageRouteAnimation(page: const MainScreen()),
                                      (route) => false,
                                );
                              }
                            },
                            builder: (context, state) {
                              if (state.ulStatus is UlInit) {
                                return GestureDetector(
                                  onTap: () {
                                    BlocProvider.of<LoginBloc>(context).add(
                                      UlEvent(
                                        LoginParam(
                                          identity: usernameController.text,
                                          password: passController.text,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff3B5EDF),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'ورود',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'sb',
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }
                              if (state.ulStatus is UlLoading) {
                                return Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff3B5EDF),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                      child: SpinKitThreeBounce(
                                    color: Colors.white,
                                    size: 15,
                                  )),
                                );
                              }
                              if (state.ulStatus is UlError) {
                                return GestureDetector(
                                  onTap: () {
                                    BlocProvider.of<LoginBloc>(context).add(
                                      UlEvent(
                                        LoginParam(
                                          identity: usernameController.text,
                                          password: passController.text,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff3B5EDF),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        'دوباره تلاش کنید',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'sb',
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }
                              return GestureDetector(
                                onTap: () {
                                  BlocProvider.of<LoginBloc>(context).add(
                                    UlEvent(
                                      LoginParam(
                                        identity: usernameController.text,
                                        password: passController.text,
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff3B5EDF),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'ورود',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'sb',
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'اگر حساب کاربری ندارید ',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'sm',
                                    color: Colors.black,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushAndRemoveUntil(
                                      pageRouteAnimation(
                                        page: SignUpScreen(),
                                      ),
                                      (route) => false,
                                    );
                                  },
                                  child: const Text(
                                    'ثبت نام کنید.',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'sb',
                                      color: Color(0xff3B5EDF),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
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
