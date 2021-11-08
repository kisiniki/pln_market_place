import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:pln_market_place/presentation/screen/home/report_outage/report_outage_main.dart';
import 'package:pln_market_place/router/constants.dart';
import 'package:pln_market_place/services/assets.dart';
import 'package:pln_market_place/services/themes.dart';
import 'package:pln_market_place/widgets/container_shadow.dart';

class ReportOutagePage extends StatelessWidget {
  const ReportOutagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenHeight(context) * 0.07,
        elevation: 0,
        title: const Text(
          'Charge.IN',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        backgroundColor: primaryColor2,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: screenWidth(context),
                height: screenHeight(context) * 0.27,
                color: primaryColor2,
              ),
              Center(
                child: Container(
                  height: screenHeight(context) * 0.27,
                  width: screenWidth(context) * 0.9,
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        imageTulisanSPKLU,
                        scale: 5,
                      ),
                      const Text(
                        'Charge your Electric Vehicle',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: white),
                      ),
                      const Text(
                        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(255, 255, 255, 0.7),
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: screenWidth(context) * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, nearestStationRoute);
                  },
                  child: Container(
                    height: screenHeight(context) * 0.15,
                    width: screenWidth(context) * 0.5,
                    // padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Find nearest station',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: screenHeight(context) * 0.01,
                        ),
                        const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: greyDarker),
                        )
                      ],
                    ),
                  ),
                ),
                Image.asset(
                  imageFindNearestStation,
                  scale: 6,
                )
              ],
            ),
          ),
          SizedBox(height: screenHeight(context)*0.01,),
          Container(
            width: screenWidth(context) * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: screenHeight(context) * 0.15,
                  width: screenWidth(context) * 0.5,
                  // padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Pay as you use',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: screenHeight(context) * 0.01,
                      ),
                      const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: greyDarker),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  imagePayAsYouUse,
                  scale: 6,
                )
              ],
            ),
          ),
          SizedBox(height: screenHeight(context)*0.01,),
          Container(
            width: screenWidth(context) * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: screenHeight(context) * 0.15,
                  width: screenWidth(context) * 0.5,
                  // padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Transaction history',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: screenHeight(context) * 0.01,
                      ),
                      const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: greyDarker),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  imageTransactionHistory,
                  scale: 6,
                )
              ],
            ),
          )
        ],
      ),
      bottomSheet: Container(
        padding: EdgeInsets.all(10),
        height: screenHeight(context) * 0.14,
        width: screenWidth(context),
        color: white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RichText(
                text: TextSpan(
                    text: 'By clicking on start button, you agree to the ',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: greyDarker),
                    children: [
                  TextSpan(
                      text: 'terms and conditions',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: primaryColor,
                          decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Navigator.pushNamed(context, ''))
                ])),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, reportOutageMainRoute);
              },
              child: Container(
                width: screenHeight(context) * 0.8,
                height: screenHeight(context) * 0.05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: primaryColor),
                child: const Center(
                    child: Text(
                  'Start Using Charge.IN',
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w600, color: white),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
