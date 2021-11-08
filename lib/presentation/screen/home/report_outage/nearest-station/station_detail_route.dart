import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:pln_market_place/router/arguments.dart';
import 'package:pln_market_place/router/constants.dart';
import 'package:pln_market_place/services/assets.dart';
import 'package:pln_market_place/services/themes.dart';

class StationDetailRoute extends StatefulWidget {
  final StationDetailArgument<String> argument;
  StationDetailRoute({required this.argument});

  @override
  State<StationDetailRoute> createState() => _StationDetailRouteState();
}

class _StationDetailRouteState extends State<StationDetailRoute> {
  bool _expanded = false;
  bool _expanded2 = false;
  bool _expanded3 = false;

  String barcode = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
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
              Icons.arrow_back_ios_new_rounded,
              color: black,
            ),
          ),
          backgroundColor: white,
        ),
        body: SingleChildScrollView(
          child: Column(
          children: [
            SizedBox(
              height: screenHeight(context) * 0.01,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: screenHeight(context) * 0.13,
              width: screenWidth(context) * 0.95,
              decoration: const BoxDecoration(
                color: white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Image.asset(
                      iconChargeColors,
                      scale: 13,
                    ),
                  ),
                  Container(
                    height: screenHeight(context) * 0.13,
                    width: screenWidth(context) * 0.75,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          widget.argument.name,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: greyDarker2),
                        ),
                        Text(
                          widget.argument.address,
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: greyDarker),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: screenHeight(context) * 0.04,
                              width: screenWidth(context) * 0.2,
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.location_on_outlined,
                                    size: 20,
                                  ),
                                  Text(
                                    '  ${widget.argument.distance}',
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: greyDarker),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: screenHeight(context) * 0.03,
                              width: screenWidth(context) * 0.3,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: primaryColor2),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.directions,
                                    size: 20,
                                    color: white,
                                  ),
                                  Text(
                                    '  Directions',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: white),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: screenWidth(context) * 0.9,
              height: screenHeight(context) * 0.05,
              decoration: const BoxDecoration(
                  color: greenLighter,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    iconChargeBox,
                    scale: 25,
                  ),
                  Text(
                    ' ${widget.argument.chagres} Charge Boxes   ',
                    style: const TextStyle(
                        color: greenP,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  Image.asset(
                    iconConnector,
                    scale: 25,
                  ),
                  Text(
                    '  ${widget.argument.connections} Connectors',
                    style: const TextStyle(
                        color: greenP,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpansionPanelList(
                expansionCallback: (panelIndex, isExpanded) {
                  _expanded = !_expanded;
                  _expanded2 = !_expanded;
                  _expanded3 = !_expanded;
                  setState(() {});
                },
                children: [
                  ExpansionPanel(
                      headerBuilder: (context, isExpanded) {
                        return ListTile(
                            contentPadding: EdgeInsets.all(15),
                            tileColor: greyLighter3,
                            title: Row(
                              children: [
                                Image.asset(
                                  iconChargeColors,
                                  scale: 13,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            scale: 30,
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
                            ));
                      },
                      body: ListTile(
                          contentPadding: EdgeInsets.all(15),
                          tileColor: greyLighter4,
                          title: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          iconAvailable,
                                          scale: 13,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'CCS2 - 87.5 kW DC',
                                                style: TextStyle(
                                                    color: greyDarker2,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              Container(
                                                width:
                                                    screenWidth(context) * 0.2,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    color: greenP),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      iconElectric,
                                                      color: white,
                                                      scale: 25,
                                                    ),
                                                    const Text(
                                                      '  Available',
                                                      style: TextStyle(
                                                          color: white,
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w600),
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
                                    'Rp 20/kWh',
                                    style: TextStyle(
                                        color: greyDarker2,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeight(context) * 0.02,
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          iconInUse,
                                          scale: 13,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'CCS2 - 87.5 kW DC',
                                                style: TextStyle(
                                                    color: greyDarker2,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              Container(
                                                width:
                                                    screenWidth(context) * 0.2,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    color: blueP),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      iconElectric,
                                                      color: white,
                                                      scale: 25,
                                                    ),
                                                    const Text(
                                                      '  In Use',
                                                      style: TextStyle(
                                                          color: white,
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w600),
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
                                    'Rp 20/kWh',
                                    style: TextStyle(
                                        color: greyDarker2,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeight(context) * 0.02,
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          iconUnderMaintenance,
                                          scale: 13,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'CCS2 - 87.5 kW DC',
                                                style: TextStyle(
                                                    color: greyDarker2,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              Container(
                                                width:
                                                    screenWidth(context) * 0.32,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    color: redP),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      iconElectric,
                                                      color: white,
                                                      scale: 25,
                                                    ),
                                                    const Text(
                                                      '  Under Maintenance',
                                                      style: TextStyle(
                                                          color: white,
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w600),
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
                                    'Rp 20/kWh',
                                    style: TextStyle(
                                        color: greyDarker2,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      isExpanded: _expanded,
                      canTapOnHeader: true,
                      backgroundColor: greyLighter3),
                  ExpansionPanel(
                      headerBuilder: (context, isExpanded) {
                        return ListTile(
                            contentPadding: EdgeInsets.all(15),
                            tileColor: greyLighter3,
                            title: Row(
                              children: [
                                Image.asset(
                                  iconChargeColors,
                                  scale: 13,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Shneider DC Fast Charger',
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
                                            scale: 30,
                                          ),
                                          const Text(
                                            '  3 Connectors',
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
                            ));
                      },
                      body: ListTile(
                          contentPadding: EdgeInsets.all(15),
                          tileColor: greyLighter4,
                          title: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          iconAvailable,
                                          scale: 13,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'CCS2 - 87.5 kW DC',
                                                style: TextStyle(
                                                    color: greyDarker2,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              Container(
                                                width:
                                                    screenWidth(context) * 0.2,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    color: greenP),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      iconElectric,
                                                      color: white,
                                                      scale: 25,
                                                    ),
                                                    const Text(
                                                      '  Available',
                                                      style: TextStyle(
                                                          color: white,
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w600),
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
                                    'Rp 20/kWh',
                                    style: TextStyle(
                                        color: greyDarker2,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeight(context) * 0.02,
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          iconInUse,
                                          scale: 13,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'CCS2 - 87.5 kW DC',
                                                style: TextStyle(
                                                    color: greyDarker2,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              Container(
                                                width:
                                                    screenWidth(context) * 0.2,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    color: blueP),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      iconElectric,
                                                      color: white,
                                                      scale: 25,
                                                    ),
                                                    const Text(
                                                      '  In Use',
                                                      style: TextStyle(
                                                          color: white,
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w600),
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
                                    'Rp 20/kWh',
                                    style: TextStyle(
                                        color: greyDarker2,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeight(context) * 0.02,
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          iconUnderMaintenance,
                                          scale: 13,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'CCS2 - 87.5 kW DC',
                                                style: TextStyle(
                                                    color: greyDarker2,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              Container(
                                                width:
                                                    screenWidth(context) * 0.32,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    color: redP),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      iconElectric,
                                                      color: white,
                                                      scale: 25,
                                                    ),
                                                    const Text(
                                                      '  Under Maintenance',
                                                      style: TextStyle(
                                                          color: white,
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w600),
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
                                    'Rp 20/kWh',
                                    style: TextStyle(
                                        color: greyDarker2,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      isExpanded: _expanded2,
                      canTapOnHeader: true,
                      backgroundColor: greyLighter3),
                      ExpansionPanel(
                      headerBuilder: (context, isExpanded) {
                        return ListTile(
                            contentPadding: EdgeInsets.all(15),
                            tileColor: greyLighter3,
                            title: Row(
                              children: [
                                Image.asset(
                                  iconChargeColors,
                                  scale: 13,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'ABB Terra 53 CJG',
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
                                            scale: 30,
                                          ),
                                          const Text(
                                            '  3 Connectors',
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
                            ));
                      },
                      body: ListTile(
                          contentPadding: EdgeInsets.all(15),
                          tileColor: greyLighter4,
                          title: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          iconAvailable,
                                          scale: 13,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'CCS2 - 87.5 kW DC',
                                                style: TextStyle(
                                                    color: greyDarker2,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              Container(
                                                width:
                                                    screenWidth(context) * 0.2,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    color: greenP),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      iconElectric,
                                                      color: white,
                                                      scale: 25,
                                                    ),
                                                    const Text(
                                                      '  Available',
                                                      style: TextStyle(
                                                          color: white,
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w600),
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
                                    'Rp 20/kWh',
                                    style: TextStyle(
                                        color: greyDarker2,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeight(context) * 0.02,
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          iconInUse,
                                          scale: 13,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'CCS2 - 87.5 kW DC',
                                                style: TextStyle(
                                                    color: greyDarker2,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              Container(
                                                width:
                                                    screenWidth(context) * 0.2,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    color: blueP),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      iconElectric,
                                                      color: white,
                                                      scale: 25,
                                                    ),
                                                    const Text(
                                                      '  In Use',
                                                      style: TextStyle(
                                                          color: white,
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w600),
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
                                    'Rp 20/kWh',
                                    style: TextStyle(
                                        color: greyDarker2,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeight(context) * 0.02,
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          iconUnderMaintenance,
                                          scale: 13,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'CCS2 - 87.5 kW DC',
                                                style: TextStyle(
                                                    color: greyDarker2,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                              Container(
                                                width:
                                                    screenWidth(context) * 0.32,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    color: redP),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset(
                                                      iconElectric,
                                                      color: white,
                                                      scale: 25,
                                                    ),
                                                    const Text(
                                                      '  Under Maintenance',
                                                      style: TextStyle(
                                                          color: white,
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w600),
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
                                    'Rp 20/kWh',
                                    style: TextStyle(
                                        color: greyDarker2,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ],
                          )),
                      isExpanded: _expanded3,
                      canTapOnHeader: true,
                      backgroundColor: greyLighter3),
                ],
              ),
            ),
            SizedBox(
                height: screenHeight(context) * 0.01,
              ),
              GestureDetector(
                onTap: () async {
                  // try {
                  //   String barcode = (await BarcodeScanner.scan()) as String;
                  //   setState(() {
                  //     this.barcode = barcode;
                  //     Navigator.pushNamed(context, chargingRoute);
                  //   });
                  // } on PlatformException catch (error) {
                  //   if (error.code == BarcodeScanner.cameraAccessDenied) {
                  //     setState(() {
                  //       this.barcode = 'Izin kamera tidak diizinkan oleh si pengguna';
                  //     });
                  //   } else {
                  //     setState(() {
                  //       this.barcode = 'Error: $error';
                  //     });
                  //   }
                  // }
                  scanBarcodeNormal();
                },
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
              ),
              Text(
                'Result: $barcode',
                textAlign: TextAlign.center,
              ),
              
              
          ],
        ),
        ));
  }
  Future<void> startBarcodeScanStream() async {
    FlutterBarcodeScanner.getBarcodeStreamReceiver(
            '#ff6666', 'Cancel', true, ScanMode.BARCODE)!
        .listen((barcode) => print(barcode));
  }
String _scanBarcode = 'Unknown';
  Future<void> scanQR() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }
  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
          Navigator.pushNamed(context, chargingRoute);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
      
    });
  }

}
