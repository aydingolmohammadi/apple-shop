import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List imagePath = [
      'assets/images/01.png',
      'assets/images/02.png',
      'assets/images/03.png',
      'assets/images/04.png',
      'assets/images/05.png',
      'assets/images/06.png',
      'assets/images/07.png',
      'assets/images/08.png',
    ];

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
          child: SingleChildScrollView(
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
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 21.9,
                            ),
                            const Text(
                              'دسته بندی',
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
                  GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15.0,
                      mainAxisSpacing: 15.0,
                    ),
                    itemCount: imagePath.length,
                    physics: const BouncingScrollPhysics(),
                    primary: false,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.teal[100],
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(
                              imagePath[index],
                            ),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
