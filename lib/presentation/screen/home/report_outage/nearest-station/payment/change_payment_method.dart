import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pln_market_place/router/constants.dart';
import 'package:pln_market_place/services/assets.dart';
import 'package:pln_market_place/services/themes.dart';

class ChangePaymentMethodRoute extends StatefulWidget {
  const ChangePaymentMethodRoute({Key? key}) : super(key: key);

  @override
  _ChangePaymentMethodRouteState createState() =>
      _ChangePaymentMethodRouteState();
}

class _ChangePaymentMethodRouteState extends State<ChangePaymentMethodRoute> {
  int _radioValue = 0;
  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 18,
              color: black,
            )),
        backgroundColor: white,
        centerTitle: true,
        title: const Text(
          "Ganti Metode Pembayaran",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, color: black),
        ),
      ),
      body: Column(
        
        children: [
          Align(
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    backgroundPembayaran,
                    height: screenHeight(context) * 0.15,
                    width: screenWidth(context) * 0.95,
                  ),
                ),
                Column(
                  children: const [
                    Text(
                      'Total Pembayaran',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: white),
                    ),
                    Text(
                      'Rp 1.501.500',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                          color: white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Pembayaran Online',
                  style: TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w700, color: black),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            width: screenWidth(context) * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Image.asset(
                        imageLogoLinkAja,
                        scale: 3,
                      ),
                      SizedBox(
                        width: screenWidth(context) * 0.05,
                      ),
                      const Text(
                        'LinkAja',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: black),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  iconRadioButton,
                  scale: 3,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            width: screenWidth(context) * 0.9,
            child: Row(
              children: [
                Image.asset(
                  imageLogoGopay,
                  scale: 3,
                ),
                SizedBox(
                  width: screenWidth(context) * 0.05,
                ),
                const Text(
                  'GoPay',
                  style: TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w700, color: black),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            width: screenWidth(context) * 0.9,
            child: Row(
              children: [
                Image.asset(
                  imageLogoOvo,
                  scale: 3,
                ),
                SizedBox(
                  width: screenWidth(context) * 0.05,
                ),
                const Text(
                  'OVO',
                  style: TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w700, color: black),
                )
              ],
            ),
          ),
          
        ],
      ),
      bottomSheet: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: screenHeight(context) * 0.07,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: primaryColor2,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text('Continue',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: white)),
                ),
              ),
            ),
    );
  }
}
