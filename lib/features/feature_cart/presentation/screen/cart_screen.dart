import 'package:apple_shop/core/utils/add_commas.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 21.9,
                              ),
                              const Text(
                                'سبد خرید',
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
                      const SizedBox(
                        height: 20,
                      ),
                      ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                height: 240,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0xff858585).withOpacity(0.30),
                                      blurRadius: 10.0,
                                      offset: const Offset(0, 5),
                                    )
                                  ]
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/images/iphone.png',
                                            height: 120,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'آیفون 13 پرومکس دو سیم کارت و حافظه 256 گیگابایت',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontFamily: 'sm',
                                                    overflow: TextOverflow
                                                        .ellipsis,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                const Text(
                                                  'گارانتی 18 ماه مدیا پردازش',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 10,
                                                    fontFamily: 'sm',
                                                    overflow: TextOverflow
                                                        .ellipsis,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      '46000000'
                                                          .replaceAllMapped(
                                                              reg,
                                                              mathFunc),
                                                      style:
                                                          const TextStyle(
                                                        color: Color(
                                                            0xff858585),
                                                        fontSize: 16,
                                                        fontFamily: 'sm',
                                                        overflow:
                                                            TextOverflow
                                                                .ellipsis,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      'تومان'
                                                          .replaceAllMapped(
                                                              reg,
                                                              mathFunc),
                                                      style:
                                                          const TextStyle(
                                                        color: Color(
                                                            0xff858585),
                                                        fontSize: 12,
                                                        fontFamily: 'sm',
                                                        overflow:
                                                            TextOverflow
                                                                .ellipsis,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    Container(
                                                      decoration:
                                                          const BoxDecoration(
                                                        color: Colors.red,
                                                        borderRadius:
                                                            BorderRadius
                                                                .all(
                                                          Radius.circular(
                                                              15),
                                                        ),
                                                      ),
                                                      child: const Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                          vertical: 2,
                                                          horizontal: 6,
                                                        ),
                                                        child: Text(
                                                          '15 ٪',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'sb',
                                                            fontSize: 12,
                                                            color: Colors
                                                                .white,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Container(
                                                          height: 25,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors
                                                                .white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15),
                                                            border:
                                                                Border.all(
                                                              color: const Color(
                                                                  0xffE5E5E5),
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding: const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    10.0),
                                                            child: Row(
                                                              children: [
                                                                const Text(
                                                                  '256 گیگابایت',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        10,
                                                                    fontFamily:
                                                                        'sm',
                                                                    color: Color(
                                                                        0xff858585),
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  width: 5,
                                                                ),
                                                                SvgPicture
                                                                    .asset(
                                                                        'assets/images/option.svg'),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          width: 10,
                                                        ),
                                                        Container(
                                                          height: 25,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors
                                                                .white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15),
                                                            border:
                                                                Border.all(
                                                              color: const Color(
                                                                  0xffE5E5E5),
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding: const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    10.0),
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  height:
                                                                      15.0,
                                                                  width:
                                                                      15.0,
                                                                  decoration:
                                                                      const BoxDecoration(
                                                                    color: Color(
                                                                        0xff004703),
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  width: 5,
                                                                ),
                                                                const Text(
                                                                  'سبز کله غازی',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        10,
                                                                    fontFamily:
                                                                        'sm',
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  width: 5,
                                                                ),
                                                                SvgPicture
                                                                    .asset(
                                                                        'assets/images/option.svg'),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Container(
                                                          height: 25,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors
                                                                .white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15),
                                                            border:
                                                                Border.all(
                                                              color: const Color(
                                                                  0xffE5E5E5),
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding: const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    10.0),
                                                            child: Row(
                                                              children: [
                                                                const Text(
                                                                  '1',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        10,
                                                                    fontFamily:
                                                                        'sm',
                                                                    color: Color(
                                                                        0xff858585),
                                                                  ),
                                                                ),
                                                                const SizedBox(
                                                                  width: 5,
                                                                ),
                                                                SvgPicture
                                                                    .asset(
                                                                        'assets/images/option.svg'),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          width: 10,
                                                        ),
                                                        Container(
                                                          height: 25,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors
                                                                .white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15),
                                                            border:
                                                                Border.all(
                                                              color: const Color(
                                                                  0xffE5E5E5),
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding: const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    10.0),
                                                            child: Row(
                                                              children: [
                                                                SvgPicture
                                                                    .asset(
                                                                  'assets/images/active_favorite_product.svg',
                                                                  height:
                                                                      15.0,
                                                                ),
                                                                const SizedBox(
                                                                  width: 5,
                                                                ),
                                                                const Text(
                                                                  'ذخیره',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        10,
                                                                    fontFamily:
                                                                        'sm',
                                                                    color: Color(
                                                                        0xff858585),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          width: 10,
                                                        ),
                                                        Container(
                                                          height: 25,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors
                                                                .white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15),
                                                            border:
                                                                Border.all(
                                                              color: const Color(
                                                                  0xffE5E5E5),
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding: const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    10.0),
                                                            child: Row(
                                                              children: [
                                                                SvgPicture
                                                                    .asset(
                                                                  'assets/images/trash.svg',
                                                                  height:
                                                                      15.0,
                                                                ),
                                                                const SizedBox(
                                                                  width: 5,
                                                                ),
                                                                const Text(
                                                                  'حذف',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        10,
                                                                    fontFamily:
                                                                        'sm',
                                                                    color: Color(
                                                                        0xff858585),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      const DottedLine(
                                        direction: Axis.horizontal,
                                        lineLength: double.infinity,
                                        lineThickness: 2.0,
                                        dashLength: 10.0,
                                        dashColor: Color(0xffEEEEEE),
                                        dashRadius: 5.0,
                                        dashGapLength: 5.0,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '46000000'.replaceAllMapped(
                                                reg, mathFunc),
                                            style: const TextStyle(
                                              color: Color(0xff858585),
                                              fontSize: 16,
                                              fontFamily: 'sm',
                                              overflow:
                                                  TextOverflow.ellipsis,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'تومان'.replaceAllMapped(
                                                reg, mathFunc),
                                            style: const TextStyle(
                                              color: Color(0xff858585),
                                              fontSize: 12,
                                              fontFamily: 'sm',
                                              overflow:
                                                  TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          );
                        },
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: const Color(0xff1DB68B),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ادامه فرآیند خرید',
                            style: TextStyle(
                              color: Color(0xffffffff),
                              fontSize: 14,
                              fontFamily: 'sb',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
