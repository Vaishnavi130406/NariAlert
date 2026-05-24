import 'package:flutter/material.dart';
import 'sos_service.dart';

class SOSPage extends StatelessWidget {
  const SOSPage({super.key});

  void triggerSOS() {
    SOSService.sendSOS();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SOS Alert"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            padding: const EdgeInsets.all(60),
            shape: const CircleBorder(),
          ),
          onPressed: triggerSOS,
          child: const Text(
            "SEND SOS",
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
        ),
      ),
    );
  }
}