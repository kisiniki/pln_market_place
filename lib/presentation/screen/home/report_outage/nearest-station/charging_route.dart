import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:pln_market_place/router/constants.dart';
import 'package:pln_market_place/services/assets.dart';
import 'package:pln_market_place/services/themes.dart';

class ChargingRoute extends StatelessWidget {
  const ChargingRoute({Key? key}) : super(key: key);
  // final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Charging Stations',
          style: TextStyle(
              color: black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.clear_rounded,
            color: black,
          ),
        ),
        backgroundColor: white,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        height: screenHeight(context) * 0.14,
        width: screenWidth(context),
        decoration: BoxDecoration(color: white, boxShadow: [
          BoxShadow(offset: Offset(0, -1), color: greylighter, blurRadius: 10),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Total',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: greyDarker2),
                ),
                Text(
                  'Rp ---',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600, color: redP),
                )
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, paymentroute);
              },
              child: const Text(
                'Pay and Charge',
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w600, color: white),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(primaryColor2),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 15, horizontal: 30))),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              thickness: 1,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: const BoxDecoration(color: white, boxShadow: [
                BoxShadow(
                    color: greyLighter3, blurRadius: 2, offset: Offset(2, 4))
              ]),
              child: Row(
                children: [
                  Image.asset(
                    iconChargeColors,
                    scale: 15,
                  ),
                  SizedBox(width: screenWidth(context) * 0.03),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'SPKLU PLN UID JAKARTA RAYA',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: greyDarker2),
                      ),
                      Text(
                        'JI. M. I Ridwan Rais No. 1, Gambir, JI. M. I Ridwan Rais No. 1, Gambir',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: greyDarker),
                      ),
                    ],
                  ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: screenHeight(context) * 0.07,
                padding: EdgeInsets.only(left: 8),
                color: greyLighter3,
                child: Row(
                  children: [
                    Image.asset(
                      iconChargeColors,
                      scale: 17,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Delta Ultra Fast Charger',
                            style: TextStyle(
                                color: greyDarker2,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                iconConnector,
                                color: greyDarker,
                                scale: 40,
                              ),
                              const Text(
                                '  4 Connectors',
                                style: TextStyle(
                                    color: greyDarker,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: greyLighter4,
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        Image.asset(
                          iconAvailable,
                          scale: 13,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'CCS2 - 87.5 kW DC',
                                style: TextStyle(
                                    color: greyDarker2,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                              ),
                              Container(
                                width: screenWidth(context) * 0.2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: greenP),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      iconElectric,
                                      color: white,
                                      scale: 40,
                                    ),
                                    const Text(
                                      '  Available',
                                      style: TextStyle(
                                          color: white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Rp 20.000/ kWh',
                    style: TextStyle(
                        color: greyDarker2,
                        fontSize: 14,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight(context) * 0.12,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Nominal kWh',
                      style: TextStyle(
                          color: greyDarker2,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                  Text(
                      'Input jumlah kWh yang ingin Anda beli pada form dibawah ini',
                      style: TextStyle(
                          color: greylighterT,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                  TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: greyLighter3,
                        hintText: 'Eg. 3.5 kWh',
                        hintStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: greylighterT),
                        border: OutlineInputBorder()),
                  ),
                  Text('Popular charging',
                      style: TextStyle(
                          color: greylighterT,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: screenHeight(context) * 0.05,
                      width: screenWidth(context) * 0.21,
                      decoration: BoxDecoration(
                          color: primaryColor2,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Text(
                          '10 kWh',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: screenHeight(context) * 0.05,
                      width: screenWidth(context) * 0.21,
                      decoration: BoxDecoration(
                          color: primaryColor2,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Text(
                          '15 kWh',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: screenHeight(context) * 0.05,
                      width: screenWidth(context) * 0.21,
                      decoration: BoxDecoration(
                          color: primaryColor2,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Text(
                          '20 kWh',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: screenHeight(context) * 0.05,
                      width: screenWidth(context) * 0.21,
                      decoration: BoxDecoration(
                          color: primaryColor2,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Text(
                          '25 kWh',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: screenHeight(context) * 0.02,
            ),
            Material(
              elevation: 2,
              child: Container(
                padding: EdgeInsets.all(10),
                height: screenHeight(context) * 0.1,
                width: screenWidth(context)*0.95,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Image.asset(
                            iconPromo,
                            scale: 25,
                          ),
                          SizedBox(
                            width: screenWidth(context) * 0.03,
                          ),
                          const Text(
                            'Masukkan Kode Promo',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: greyDarker2),
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                      color: greyLighter5,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight(context)*0.02,),
            Material(
              elevation: 2,
              child: Container(
                width: screenWidth(context)*0.95,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Row(
                          children: const [
                            Text(
                              'Total kWh dibeli  ',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: greyDarker2),
                            ),
                            Icon(
                              Icons.info_outline_rounded,
                              color: greylighterT,
                              size: 15,
                            )
                          ],
                        )),
                        const Text('2.0 kWh',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: greyDarker2))
                      ],
                    ),
                    SizedBox(height: screenHeight(context)*0.01,),
                    Row(
                      children: [
                        Expanded(
                            child: Row(
                          children: const [
                            Text(
                              'Discount  ',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: greyDarker2),
                            ),
                            Icon(
                              Icons.info_outline_rounded,
                              color: greylighterT,
                              size: 15,
                            )
                          ],
                        )),
                        const Text('- Rp 0.000',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: greenP))
                      ],
                    ),
                    SizedBox(height: screenHeight(context)*0.01,),
                    Row(
                      children: const [
                        Expanded(
                            child: Text(
                          'Biaya Layanan',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: greyDarker2),
                        )),
                        Text('Rp 0.000',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: black)),
                                
                      ],
                    ),
                    SizedBox(height: screenHeight(context)*0.01,),
                    Row(
                      children: const [
                        Expanded(
                            child: Text(
                          'Biaya Layanan',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: greyDarker2),
                        )),
                        Text('Rp 0.000',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: black)),
                                
                      ],
                    ),
                    SizedBox(height: screenHeight(context)*0.01,),
                    Row(
                      children: const [
                        Expanded(
                            child: Text(
                          'Biaya Layanan',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: greyDarker2),
                        )),
                        Text('Rp 0.000',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: black)),
                                
                      ],
                    ),
                    SizedBox(height: screenHeight(context)*0.01,),
                    Row(
                      children: const [
                        Expanded(
                            child: Text(
                          'Total Pembayaran',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: greyDarker2),
                        )),
                        Text('Rp 40.000',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: redP)),
                                
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight(context)*0.02,),
          ],
        ),
      ),
    );
  }
}
