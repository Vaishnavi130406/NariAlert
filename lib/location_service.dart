import 'package:geolocator/geolocator.dart';

class LocationService {

  static Future<String> getLocation() async {

    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return "Location services are disabled.";
    }

    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    String location =
        "https://www.google.com/maps/search/?api=1&query=${position.latitude},${position.longitude}";

    return location;
  }
}