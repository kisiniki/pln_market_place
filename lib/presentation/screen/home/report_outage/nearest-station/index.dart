import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:location/location.dart';
import 'package:pln_market_place/presentation/screen/home/report_outage/nearest-station/source/source_station.dart';
import 'package:pln_market_place/presentation/screen/home/report_outage/nearest-station/utils/location_service.dart';
import 'package:pln_market_place/services/themes.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FindNearestStationRoute extends StatefulWidget {
  const FindNearestStationRoute({Key? key}) : super(key: key);

  @override
  State<FindNearestStationRoute> createState() =>
      _FindNearestStationRouteState();
}

class _FindNearestStationRouteState extends State<FindNearestStationRoute> {
  double longitude = 118.3155855;
  double latitude = -2.8643244;
  late GoogleMapController mapController;
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    location.onLocationChanged.listen((l) {
      mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: LatLng(latitude, longitude), zoom: 15,),
        ),
      );
    });
  }

  Location location = Location();
  @override
  void initState() {
    super.initState();
    locationService.locationStram.listen((userLocation) {
      setState(() {
        longitude = userLocation.longitude!;
        latitude = userLocation.latitude!;
        print(userLocation.longitude);
        print(userLocation.latitude);
      });
    });
  }

  @override
  void dispose() {
    locationService.dispose();
    super.dispose();
  }

  LocationService locationService = LocationService();

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
        body: Stack(
          children: [
            Container(
              width: screenWidth(context),
              height: screenHeight(context) * 0.9,
              child: GoogleMap(
                mapType: MapType.normal,
                onMapCreated: _onMapCreated,
                // myLocationEnabled: true,
                initialCameraPosition: CameraPosition(
                  target: LatLng(latitude, longitude),
                  zoom: 2000,
                ),
              ),
            ),
            // Positioned(
            //     right: 20,
            //     bottom: 200,
            //     child: Container(
            //       height: screenWidth(context)*0.13,
            //       width: screenWidth(context)*0.13,
            //       decoration: BoxDecoration(shape: BoxShape.circle, color: white),
            //       child: IconButton(
            //           iconSize: 40,
            //           onPressed: () {
            //             // locationService.locationStram.listen((userLocation) {
            //             //   setState(() {
            //             //     longitude = userLocation.longitude!;
            //             //     latitude = userLocation.latitude!;
            //             //     print(userLocation.longitude);
            //             //     print(userLocation.latitude);
            //             //   });
            //             // });
            //           },
            //           icon: Icon(Icons.location_on, color: redP,)),
            //     )),
            Positioned(
                top: 10,
                right: 15,
                left: 15,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: white,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: greyDarker,
                            size: 25,
                          )),
                      const Expanded(
                        child: TextField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.go,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 15),
                              hintText: "Search..."),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.clear_circled,
                            color: greyDarker,
                          )),
                    ],
                  ),
                )),
            Positioned(
              bottom: 30,
              left: 15,
              right: 15,
              child: SizedBox(
                height: screenHeight(context) * 0.2,
                child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: sourceStation.length,
                    itemBuilder: (context, index) {
                      Widget list = sourceStation[index];
                      return list;
                    }),
              ),
            )
          ],
        ));
  }
}
