import 'dart:async';

import 'package:location/location.dart';
import 'package:pln_market_place/presentation/screen/home/report_outage/nearest-station/utils/user_location_model.dart';

class LocationService {
  Location location = Location();
  StreamController<UserLocationModel> _locationStreamController =
      StreamController<UserLocationModel>();
  Stream<UserLocationModel> get locationStram =>
      _locationStreamController.stream;

  LocationService() {
    location.requestPermission().then((permissionStatus) {
      if (permissionStatus == PermissionStatus.granted) {
        location.onLocationChanged.listen((locationData) {
          if (locationData != null) {
            _locationStreamController.add(UserLocationModel(
                longitude: locationData.longitude,
                latitude: locationData.latitude));
          }
        });
      }
    });
  }
  void dispose() => _locationStreamController.close();
}
