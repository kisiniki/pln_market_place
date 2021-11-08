import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:pln_market_place/router/arguments.dart';
import 'package:pln_market_place/router/constants.dart';
import 'package:pln_market_place/services/assets.dart';
import 'package:pln_market_place/services/themes.dart';

class MyStationContainer extends StatelessWidget {
  final String name;
  final String address;
  final String distance;
  final String direction;
  final String chagres;
  final String connections;

  const MyStationContainer(
      {Key? key,
      required this.name,
      required this.address,
      required this.distance,
      required this.direction,
      required this.chagres,
      required this.connections})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: InkWell(
        onTap: (){
          Navigator.of(context).pushNamed(stationDetailRoute,
                arguments: StationDetailArgument(
                    name: name,
                    address: address,
                    distance: distance,
                    chagres: chagres,
                    connections: connections,
                    direction: direction));
        },
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: screenHeight(context) * 0.15,
              width: screenWidth(context) * 0.8,
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
                      scale: 10,
                    ),
                  ),
                  Container(
                    height: screenHeight(context) * 0.12,
                    width: screenWidth(context) * 0.6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              name,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: greyDarker2),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: greyDarker,
                            ),
                          ],
                        ),
                        Text(
                          address,
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: greyDarker),
                        ),
                        Row(
                          children: [
                            Container(
                              height: screenHeight(context) * 0.02,
                              width: screenWidth(context) * 0.25,
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.location_on_outlined,
                                    size: 20,
                                  ),
                                  Text(
                                    '  $distance',
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: greyDarker),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: screenHeight(context) * 0.04,
                              width: screenWidth(context) * 0.35,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),color: blueLighter),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.directions,
                                    size: 20,
                                    color: primaryColor2,
                                  ),
                                  Text(
                                    '  Directions',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: primaryColor2),
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
              width: screenWidth(context) * 0.8,
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
                    ' $chagres Charge Boxes   ',
                    style: TextStyle(
                        color: greenP, fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                  Image.asset(
                    iconConnector,
                    scale: 25,
                  ),
                  Text(
                    '  $connections Connectors',
                    style: TextStyle(
                        color: greenP, fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
