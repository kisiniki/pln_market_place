import 'package:flutter/material.dart';
import 'package:pln_market_place/router/constants.dart';

class Root extends StatefulWidget {
  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  void initState() {
    super.initState();
    // initializeDateFormatting();
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    // );
    _init();
  }

  void _init() async {
    // final token = await Utils.getToken();
    // // final jailBroken = await _jailBreakDetection();
    // final hasSeenOnBoarding = await Utils.getHasSeenOnBoarding();

    // if (jailBroken)
    //   Navigator.pushNamedAndRemoveUntil(
    //     context,
    //     deviceRootedRoute,
    //     (route) => false,
    //   );
    // else {
    // if (hasSeenOnBoarding == null) {
    //   Navigator.pushNamedAndRemoveUntil(
    //     context,
    //     onBoardingRoute,
    //     (p) => false,
    //   );
    //   return;
    // }

    // if (token == null)
    //   Navigator.pushNamedAndRemoveUntil(
    //     context,
    //     phoneLoginRoute,
    //     (p) => false,
    //   );
    // else
    // Navigator.pushNamedAndRemoveUntil(
        // context, mainNavigationRoute, (p) => false,
        // arguments: CommonArgument<int>(object: 0));
        // Navigator.pushAndRemoveUntil(context, bottomNavigationRoute, (p) => false);
        Navigator.pushNamed(context, bottomNavigationRoute);
    // }
  }

  // Future<bool> _jailBreakDetection() async {
  //   try {
  //     final bool jailBroken = await FlutterJailbreakDetection.jailbroken;
  //     return jailBroken;
  //   } catch (e) {
  //     print(e);
  //     return false;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white);
  }
}
