import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pln_market_place/presentation/screen/activity/index.dart';
import 'package:pln_market_place/presentation/screen/home/index.dart';
import 'package:pln_market_place/presentation/screen/message/index.dart';
import 'package:pln_market_place/presentation/screen/profile/index.dart';
import 'package:pln_market_place/presentation/screen/rewards/index.dart';
import 'package:pln_market_place/services/assets.dart';
import 'package:pln_market_place/services/themes.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _currentIndex = 0;
  static const  List _routes = [
    HomeRoute(),
    ActivityRoute(),
    RewardsRoute(),
    MessageRoute(),
    ProfileRoute()
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _routes[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          selectedItemColor: primaryColor2,
          unselectedItemColor: Colors.black,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  iconMenuHome,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(iconMenuActivity), label: 'Activity'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(iconMenuRewards), label: 'Rewards'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(iconMenuMessage), label: 'Message'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(iconMenuProfile), label: 'Profile')
          ]),
    );
  }
}
