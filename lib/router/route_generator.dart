// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pln_market_place/main/root.dart';
import 'package:pln_market_place/presentation/screen/activity/index.dart';
import 'package:pln_market_place/presentation/screen/home/index.dart';
import 'package:pln_market_place/presentation/screen/home/report_outage/index.dart';
import 'package:pln_market_place/presentation/screen/home/report_outage/nearest-station/index.dart';
import 'package:pln_market_place/presentation/screen/home/report_outage/nearest-station/charging_route.dart';
import 'package:pln_market_place/presentation/screen/home/report_outage/nearest-station/payment/change_payment_method.dart';
import 'package:pln_market_place/presentation/screen/home/report_outage/nearest-station/payment/index.dart';
import 'package:pln_market_place/presentation/screen/home/report_outage/nearest-station/station_detail_route.dart';
import 'package:pln_market_place/presentation/screen/home/report_outage/report_outage_main.dart';
import 'package:pln_market_place/presentation/screen/message/index.dart';
import 'package:pln_market_place/presentation/screen/profile/index.dart';
import 'package:pln_market_place/presentation/screen/rewards/index.dart';
import 'package:pln_market_place/router/arguments.dart';
import 'package:pln_market_place/widgets/bottom_nav_bar.dart';

import 'constants.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case rootRoute:
        return MaterialPageRoute(settings: settings, builder: (_) => Root());
      case bottomNavigationRoute:
        return MaterialPageRoute(
            settings: settings, builder: (_) => MyBottomNavBar());
      case homeRoute:
        return MaterialPageRoute(
            settings: settings, builder: (BuildContext context) => HomeRoute());
      case activityRoute:
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) => ActivityRoute());
      case rewardsRoute:
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) => RewardsRoute());
      case messageRoute:
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) => MessageRoute());
      case profileRoute:
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) => ProfileRoute());
      case reportOutageRoute:
        return MaterialPageRoute(
            settings: settings, builder: (_) => ReportOutagePage());
      case reportOutageMainRoute:
        return MaterialPageRoute(
            settings: settings, builder: (_) => ReportOutageMainRoute());
      case nearestStationRoute:
        return MaterialPageRoute(
            settings: settings, builder: (_) => FindNearestStationRoute());
      case stationDetailRoute:
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => StationDetailRoute(
                argument: settings.arguments as StationDetailArgument<String>));
      case chargingRoute:
        return MaterialPageRoute(
            settings: settings, builder: (_) => ChargingRoute());
            case paymentroute:
        return MaterialPageRoute(
            settings: settings, builder: (_) => PaymentRoute());
            case changePaymentRoute:
        return MaterialPageRoute(
            settings: settings, builder: (_) => ChangePaymentMethodRoute());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error Route'),
        ),
        body: Center(
          child: Text('Page Not Found'),
        ),
      );
    });
  }
}
