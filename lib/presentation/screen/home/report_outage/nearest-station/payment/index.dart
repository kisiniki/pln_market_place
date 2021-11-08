import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:pln_market_place/router/constants.dart';
import 'package:pln_market_place/services/assets.dart';
import 'package:pln_market_place/services/themes.dart';

class PaymentRoute extends StatefulWidget {
  PaymentRoute({Key? key}) : super(key: key);

  @override
  State<PaymentRoute> createState() => _PaymentRouteState();
}

class _PaymentRouteState extends State<PaymentRoute> {
  var _isExpanded = false;

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
          "Pembayaran",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w600, color: black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                        'Rp 40.000',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                            color: white),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: screenHeight(context) * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: const BoxDecoration(color: white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Metode Pembayaran',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: greyDarker),
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Image.asset(
                            imageLogoLinkAja,
                            scale: 3,
                          ),
                          SizedBox(
                            width: screenWidth(context) * 0.1,
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
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, changePaymentRoute);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: screenHeight(context) * 0.08,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: blueLighter,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Text(
                              'Ganti Metode Pembayaran',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: primaryColor2),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),SizedBox(height: screenHeight(context)*0.01,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ExpansionPanelList(
                elevation: 0,
                children: [
                  ExpansionPanel(
                      backgroundColor: white,
                      headerBuilder: (context, isExpanded) {
                        return const ListTile(
                          tileColor: white,
                          title: Text(
                            'Ringkasan',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: greyDarker),
                          ),
                        );
                      },
                      body: Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            const Text('ID Pelanggan',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: greyDarker)),
                            SizedBox(
                              height: screenHeight(context) * 0.01,
                            ),
                            const Text('123456789',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: black),),SizedBox(height: screenHeight(context)*0.01,)
                          ],
                        ),
                      ),
                      isExpanded: _isExpanded),
                ],
                expansionCallback: (panelIndex, isExpanded) {
                  _isExpanded = !_isExpanded;
                  setState(() {});
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: white),
                child: Column(
                  children: [
                    const Text('Rincian Harga',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: greyDarker)),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: const [
                              Text(
                                'Electricity cost   ',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: greyDarker),
                              ),
                              Icon(
                                Icons.info_outline_rounded,
                                color: greyDarker,
                                size: 13,
                              )
                            ],
                          ),
                        ),
                        const Text(
                          'Rp 40.000',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: greyDarker),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: const [
                              Text(
                                'Discount ',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: greyDarker),
                              ),
                              Icon(
                                Icons.info_outline_rounded,
                                color: greyDarker,
                                size: 13,
                              )
                            ],
                          ),
                        ),
                        const Text(
                          '- Rp 0.000',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: greenP),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Biaya Layanan ',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: greyDarker),
                        ),
                        Text(
                          'Rp 1.500',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: greyDarker),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: const [
                              Text(
                                'Total Pembayaran',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: greyDarker),
                              ),
                              Icon(
                                Icons.info_outline_rounded,
                                color: greyDarker,
                                size: 13,
                              )
                            ],
                          ),
                        ),
                        const Text(
                          'Rp 40.000',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: redP),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: (){
                  
                },
                child: Container(
                  alignment: Alignment.center,
                  height: screenHeight(context) * 0.07,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: primaryColor2,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text('Pay',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: white)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
