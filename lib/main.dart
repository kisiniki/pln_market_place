import 'package:flutter/material.dart';
import 'package:pln_market_place/router/constants.dart';
import 'package:pln_market_place/router/route_generator.dart' as RouterGen;
import 'package:pln_market_place/widgets/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'NunitoSans'),
      initialRoute: bottomNavigationRoute,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouterGen.RouteGenerator.generateRoute,
    );
  }
}
