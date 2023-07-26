import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllProductScreen extends StatelessWidget {
  const AllProductScreen({super.key});

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
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: SvgPicture.asset(
                              'assets/images/back.svg',
                            ),
                          ),
                          const Text(
                            'پرفروش ترین ها',
                            style: TextStyle(
                              color: Color(0xff3B5EDF),
                              fontSize: 16,
                              fontFamily: 'SB',
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/images/filter.svg',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15.0,
                      mainAxisSpacing: 15.0,
                      childAspectRatio: 2 / 2.8,
                    ),
                    itemCount: 10,
                    physics: const BouncingScrollPhysics(),
                    primary: false,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 220,
                            width: 170,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xff3B5EDF),
                                    blurRadius: 20,
                                    spreadRadius: -15,
                                    offset: Offset(0, 5))
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Stack(
                                  alignment: AlignmentDirectional.center,
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
                                          color: Color(0xffD02026),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15),
                                          ),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 2, horizontal: 6),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 5.0),
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
                                          bottomLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 10,
                                        ),
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              'assets/images/arrow_circle.svg',
                                            ),
                                            const Spacer(),
                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  '46.000.000',
                                                  style: TextStyle(
                                                    fontFamily: 'sm',
                                                    fontSize: 12,
                                                    color: Colors.grey.shade300,
                                                    decoration: TextDecoration
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
                        ],
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
