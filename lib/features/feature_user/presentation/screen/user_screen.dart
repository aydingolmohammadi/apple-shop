import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> catTitle = [
      'تنظیمات',
      'سفارشات اخیر',
      'آدرس ها',
      'علاقمندی ها',
      'نقد و نظرات',
      'تخفیف ها',
      'سفارش درحال انجام',
      'اطلاعیه',
      'بلاگ',
      'پشتیبانی',
    ];

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 21.9,
                          ),
                          const Text(
                            'حساب کاربری',
                            style: TextStyle(
                              color: Color(0xff3B5EDF),
                              fontSize: 16,
                              fontFamily: 'SB',
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/images/blue_apple_icon.svg',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Column(
                  children: [
                    Text(
                      'آیدین گل محمدی',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'sb',
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '09384276383',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'sb',
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10.0,
                  ),
                  itemCount: catTitle.length,
                  physics: const BouncingScrollPhysics(),
                  primary: false,
                  padding: const EdgeInsets.all(10),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: ShapeDecoration(
                            shadows: [
                              BoxShadow(
                                color:
                                    const Color(0xff3B5EDF).withOpacity(0.30),
                                blurRadius: 10,
                                spreadRadius: 2,
                                offset: const Offset(0, 10),
                                blurStyle: BlurStyle.normal,
                              ),
                            ],
                            shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0)),
                            color: const Color(0xff3B5EDF),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          catTitle[index],
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'SM',
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
