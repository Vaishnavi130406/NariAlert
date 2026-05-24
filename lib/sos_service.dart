import 'package:url_launcher/url_launcher.dart';
import 'location_service.dart';

class SOSService {

  static Future<void> sendSOS() async {

    String location = await LocationService.getLocation();

    String message =
        "HELP! I am in danger. My location: $location";

    final Uri sms = Uri.parse("sms:9876543210?body=$message");

    if (await canLaunchUrl(sms)) {
      await launchUrl(sms);
    }
  }
}