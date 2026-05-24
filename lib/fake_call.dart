import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class FakeCall {

  static Future<void> startFakeCall() async {

    await FlutterPhoneDirectCaller.callNumber("1234567890");

  }
}