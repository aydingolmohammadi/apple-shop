import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../feature_cart/presentation/screen/cart_screen.dart';
import '../../../feature_category/presentation/screen/category_screen.dart';
import '../../../feature_home/presentation/screen/home_screen.dart';
import '../../../feature_user/presentation/screen/user_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  List<Widget> getScreens() {
    return <Widget>[
      const UserScreen(),
      const CartScreen(),
      const CategoryScreen(),
      const HomeScreen(),
    ];
  }

  int _currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: getScreens(),
      ),
      bottomNavigationBar: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 20),
          child: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                _currentIndex = value;
              });
            },

            backgroundColor: Colors.transparent,
            elevation: 0,
            currentIndex: _currentIndex,
            selectedFontSize: 10,
            unselectedFontSize: 10,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/deactive_user.svg'),
                label: 'حساب کاربری',
                activeIcon:
                SvgPicture.asset('assets/images/active_user.svg'),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/deactive_bag.svg'),
                label: 'سبد خرید',
                activeIcon:
                SvgPicture.asset('assets/images/active_bag.svg'),
              ),
              BottomNavigationBarItem(
                icon:
                SvgPicture.asset('assets/images/deactive_categury.svg'),
                label: 'دسته بندی',
                activeIcon:
                SvgPicture.asset('assets/images/active_categury.svg'),
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/images/deactive_home.svg'),
                label: 'خانه',
                activeIcon:
                SvgPicture.asset('assets/images/active_home.svg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
