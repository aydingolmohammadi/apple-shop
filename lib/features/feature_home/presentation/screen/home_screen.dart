import 'dart:async';

import 'package:apple_shop/core/utils/page_route_animation.dart';
import 'package:apple_shop/features/feature_all_product/presentation/screen/all_product_screen.dart';
import 'package:apple_shop/features/feature_product/presentation/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:apple_shop/core/utils/api_color_to_hex.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentPage = 0;

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      return setState(() {
        if (_currentPage < imagePath.length - 1) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.decelerate,
        );
      });
    });
    super.initState();
  }

  final PageController _pageController =
      PageController(initialPage: 0, viewportFraction: 0.9);

  List imagePath = [
    'assets/images/airepod pro 1.png',
    'assets/images/Rectangle 9.png',
    'assets/images/Rectangle 10.png',
    'assets/images/Rectangle 36.png',
  ];
  List iconPath = [
    'assets/images/all.svg',
    'assets/images/iphone.svg',
    'assets/images/mac book.svg',
    'assets/images/apple watch.svg',
    'assets/images/imac.svg',
  ];

  List<String> catColors = [
    '58AEE8',
    'FBAD40',
    '393939',
    '1DB68B',
    '6866F9',
  ];

  List<String> catTitle = [
    'همه',
    'آیفون',
    'مک بوک',
    'اپل واچ',
    'آی مک',
  ];

  @override
  Widget build(BuildContext context) {
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
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/images/search.svg',
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'جستجوی محصولات',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontFamily: 'SB',
                                ),
                              ),
                            ],
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
                  height: 10,
                ),
                // slider
                SizedBox(
                  height: 180,
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 180,
                        child: PageView.builder(
                          controller: _pageController,
                          itemCount: imagePath.length,
                          itemBuilder: (context, index) => Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.deepPurple.shade400,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    imagePath[index],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SmoothPageIndicator(
                            controller: _pageController,
                            count: imagePath.length,
                            effect: ExpandingDotsEffect(
                              expansionFactor: 4,
                              dotHeight: 8,
                              dotWidth: 8,
                              activeDotColor: Colors.deepPurple,
                              dotColor: Colors.grey.shade400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                // small category
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        'دسته بندی',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontFamily: 'SB',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 110.0,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: catColors.length + 1,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return const SizedBox(
                              width: 10.0,
                            );
                          }
                          if (index > 0) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60.0,
                                    height: 60.0,
                                    decoration: ShapeDecoration(
                                      shadows: [
                                        BoxShadow(
                                          color: catColors[index - 1]
                                              .toColor(0.30),
                                          blurRadius: 10,
                                          spreadRadius: 2,
                                          offset: const Offset(0, 10),
                                          blurStyle: BlurStyle.normal,
                                        ),
                                      ],
                                      shape: ContinuousRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(40.0)),
                                      color: catColors[index - 1].toColor(1),
                                    ),
                                    child: Center(
                                      child:
                                          SvgPicture.asset(iconPath[index - 1]),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    catTitle[index - 1],
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'SM',
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),

                // offers
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'پر فروش ترین ها',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontFamily: 'sb',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                pageRouteAnimation(
                                  page: const AllProductScreen(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                const Text(
                                  'مشاهده همه',
                                  style: TextStyle(
                                    color: Color(0xff3B5EDF),
                                    fontSize: 12,
                                    fontFamily: 'sb',
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                SvgPicture.asset(
                                  'assets/images/right_arrow.svg',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 250,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemCount: catColors.length + 1,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return const SizedBox(
                              width: 20,
                            );
                          } else {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  pageRouteAnimation(
                                    page: const ProductScreen(),
                                  ),
                                );
                              },
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: Container(
                                      height: 216,
                                      width: 160,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(15)),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Color(0xff3B5EDF),
                                              blurRadius: 20,
                                              spreadRadius: -15,
                                              offset: Offset(0, 5))
                                        ],
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Stack(
                                            alignment:
                                                AlignmentDirectional.center,
                                            children: [
                                              Center(
                                                child: Image.asset(
                                                  'assets/images/iphone.png',
                                                  height: 120,
                                                ),
                                              ),
                                              Positioned(
                                                top: 0,
                                                right: 10,
                                                child: SvgPicture.asset(
                                                  'assets/images/deactive_favorite_product.svg',
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 0,
                                                left: 5,
                                                child: Container(
                                                  decoration: const BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(15),
                                                    ),
                                                  ),
                                                  child: const Padding(
                                                    padding: EdgeInsets.symmetric(
                                                        vertical: 2,
                                                        horizontal: 6),
                                                    child: Text(
                                                      '15 ٪',
                                                      style: TextStyle(
                                                        fontFamily: 'sb',
                                                        fontSize: 12,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const Spacer(),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 10, right: 10),
                                                child: Text(
                                                  'آیفون 13 پرومکس',
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                    fontFamily: 'sm',
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 53,
                                                decoration: const BoxDecoration(
                                                  color: Color(0xff3B5EDF),
                                                  borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(15),
                                                    bottomRight:
                                                        Radius.circular(15),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                          horizontal: 10),
                                                  child: Row(
                                                    children: [
                                                      SvgPicture.asset(
                                                        'assets/images/arrow_circle.svg',
                                                      ),
                                                      const Spacer(),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text(
                                                            '46.000.000',
                                                            style: TextStyle(
                                                              fontFamily: 'sm',
                                                              fontSize: 12,
                                                              color: Colors
                                                                  .grey.shade300,
                                                              decoration:
                                                                  TextDecoration
                                                                      .lineThrough,
                                                            ),
                                                          ),
                                                          const Text(
                                                            '45.000.000',
                                                            style: TextStyle(
                                                              fontFamily: 'sm',
                                                              fontSize: 14,
                                                              color: Colors.white,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        width: 5,
                                                      ),
                                                      const Text(
                                                        'تومان',
                                                        style: TextStyle(
                                                            fontFamily: 'sm',
                                                            fontSize: 10,
                                                            color: Colors.white),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),

                // most visited
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'پر بازدید ترین ها',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontFamily: 'sb',
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                pageRouteAnimation(
                                  page: const AllProductScreen(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                const Text(
                                  'مشاهده همه',
                                  style: TextStyle(
                                    color: Color(0xff3B5EDF),
                                    fontSize: 12,
                                    fontFamily: 'sb',
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                SvgPicture.asset(
                                  'assets/images/right_arrow.svg',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 250,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemCount: catColors.length + 1,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return const SizedBox(
                              width: 20,
                            );
                          } else {
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: Container(
                                    height: 216,
                                    width: 160,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color(0xff3B5EDF),
                                            blurRadius: 20,
                                            spreadRadius: -15,
                                            offset: Offset(0, 5))
                                      ],
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Stack(
                                          alignment:
                                              AlignmentDirectional.center,
                                          children: [
                                            Center(
                                              child: Image.asset(
                                                'assets/images/iphone.png',
                                                height: 120,
                                              ),
                                            ),
                                            Positioned(
                                              top: 0,
                                              right: 10,
                                              child: SvgPicture.asset(
                                                'assets/images/deactive_favorite_product.svg',
                                              ),
                                            ),
                                            Positioned(
                                              bottom: 0,
                                              left: 5,
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(15),
                                                  ),
                                                ),
                                                child: const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 2,
                                                      horizontal: 6),
                                                  child: Text(
                                                    '15 ٪',
                                                    style: TextStyle(
                                                      fontFamily: 'sb',
                                                      fontSize: 12,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        const Spacer(),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                  bottom: 10, right: 10),
                                              child: Text(
                                                'آیفون 13 پرومکس',
                                                maxLines: 1,
                                                style: TextStyle(
                                                  fontFamily: 'sm',
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 53,
                                              decoration: const BoxDecoration(
                                                color: Color(0xff3B5EDF),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(15),
                                                  bottomRight:
                                                      Radius.circular(15),
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10),
                                                child: Row(
                                                  children: [
                                                    SvgPicture.asset(
                                                      'assets/images/arrow_circle.svg',
                                                    ),
                                                    const Spacer(),
                                                    Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Text(
                                                          '46.000.000',
                                                          style: TextStyle(
                                                            fontFamily: 'sm',
                                                            fontSize: 12,
                                                            color: Colors
                                                                .grey.shade300,
                                                            decoration:
                                                                TextDecoration
                                                                    .lineThrough,
                                                          ),
                                                        ),
                                                        const Text(
                                                          '45.000.000',
                                                          style: TextStyle(
                                                            fontFamily: 'sm',
                                                            fontSize: 14,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    const Text(
                                                      'تومان',
                                                      style: TextStyle(
                                                          fontFamily: 'sm',
                                                          fontSize: 10,
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
