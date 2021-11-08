import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pln_market_place/services/assets.dart';
import 'package:pln_market_place/services/themes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ReportOutageMainRoute extends StatelessWidget {
  const ReportOutageMainRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      backgroundColor: primaryColor2,
      appBar: AppBar(
        // toolbarHeight: screenHeight(context) * 0.03,
        elevation: 0,
        title: const Text(
          'Charge.IN',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        backgroundColor: primaryColor2,
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
          color: backgroundColor,
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: screenHeight(context) * 0.18,
                    width: screenWidth(context),
                    child: Center(
                      child: Image.asset(
                        imageTulisanSPKLU,
                        scale: 8,
                      ),
                    ),
                    color: primaryColor2,
                  ),
                  Positioned(
                      bottom: -45,
                      left: 16,
                      child: Container(
                        height: screenHeight(context) * 0.08,
                        width: screenWidth(context) * 0.93,
                        color: white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              imageFindNearestStation,
                              scale: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Where to charge',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: greyDarker),
                                ),
                                Text(
                                  '3 Charging stations near you',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: greyDarker),
                                )
                              ],
                            ),
                            Image.asset(
                              icon3,
                              scale: 3,
                            )
                          ],
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: screenHeight(context) * 0.08,
              ),
              Container(
                width: screenWidth(context) * 0.9,
                height: screenHeight(context) * 0.15,
                color: white,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Energy Consumption',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: greyDarker),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined)
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Image.asset(iconCalendar, scale: 20),
                            SizedBox(
                              width: screenWidth(context) * 0.02,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'This month',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: greyDarker),
                                ),
                                RichText(
                                  text: const TextSpan(
                                      text: '1.300 ',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: greyDarker),
                                      children: [
                                        TextSpan(
                                            text: 'kWh',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700,
                                                color: greyDarker))
                                      ]),
                                )
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(iconElectric, scale: 20),
                            SizedBox(
                              width: screenWidth(context) * 0.02,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Total',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: greyDarker),
                                ),
                                RichText(
                                  text: const TextSpan(
                                      text: '17.000 ',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: greyDarker),
                                      children: [
                                        TextSpan(
                                            text: 'kWh',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w700,
                                                color: greyDarker))
                                      ]),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Info',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: greyDarker),
                        ),
                        Icon(Icons.arrow_forward_ios_outlined)
                      ],
                    ),
                    SizedBox(
                      height: screenHeight(context) * 0.01,
                    ),
                    ClipRRect(
                      child: Image.asset(imagePromotion),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    SizedBox(
                      height: screenHeight(context) * 0.01,
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: SmoothPageIndicator(
                          controller: _controller,
                          count: 4,
                          effect: const SwapEffect(
                              dotHeight: 10,
                              dotWidth: 10,
                              activeDotColor: primaryColor2),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight(context) * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Charging History',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: greyDarker),
                    ),
                    Text(
                      'Show all',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: primaryColor2),
                    )
                  ],
                ),
              ),
              ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        width: screenWidth(context) * 0.9,
                        decoration: const BoxDecoration(
                            color: white,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  blurRadius: 2,
                                  color: greyLighter2,
                                  offset: Offset(0, 5))
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  height: screenWidth(context) * 0.1,
                                  width: screenWidth(context) * 0.1,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: greyLighter2,
                                      borderRadius: BorderRadius.circular(10)),
                                  // color: greylighter,
                                  child: Image.asset(
                                    iconElectric,
                                    // scale: 20,
                                    color: blueP,
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth(context) * 0.03,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          iconBatteryElectrict,
                                          scale: 20,
                                        ),
                                        SizedBox(width: screenHeight(context)*0.005,),
                                        const Text('20 kWh',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                                color: blueP))
                                      ],
                                    ),
                                    const Text(
                                      'Yesterday, 3:00 PM',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: greyDarker2),
                                    )
                                  ],
                                )
                              ],
                            ),
                            const Text('Rp 200k',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: greyDarker2))
                          ],
                        ),
                      ),
                    );
                  }),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  // alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('More features coming soon',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: greyDarker2)),
                      SizedBox(
                        height: screenHeight(context) * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: screenHeight(context) * 0.12,
                            height: screenHeight(context) * 0.12,
                            color: white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  iconPartsAndServices,
                                  scale: 10,
                                ),
                                SizedBox(
                                  height: screenHeight(context) * 0.006,
                                ),
                                const Text(
                                  'Parts and Services',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: greyDarker2),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: screenHeight(context) * 0.12,
                            height: screenHeight(context) * 0.12,
                            color: white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  iconEvMarkerplaces,
                                  scale: 10,
                                ),
                                SizedBox(
                                  height: screenHeight(context) * 0.006,
                                ),
                                const Text(
                                  'EV Market Place',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: greyDarker2),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: screenHeight(context) * 0.12,
                            height: screenHeight(context) * 0.12,
                            color: white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  iconEvComunity,
                                  scale: 10,
                                ),
                                SizedBox(
                                  height: screenHeight(context) * 0.006,
                                ),
                                const Text(
                                  'EV Community',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: greyDarker2),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )),
              SizedBox(
                height: screenHeight(context) * 0.01,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: screenHeight(context) * 0.07,
                  width: screenWidth(context) * 0.3,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 5,
                            color: greyLighter2,
                            offset: Offset(0, 7))
                      ]),
                  child: Image.asset(iconChargeText),
                ),
              ),
              SizedBox(
                height: screenHeight(context) * 0.03,
              )
            ],
          ),
        ),
      ),
    );
  }
}
