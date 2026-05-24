import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'home_page.dart';
import 'sos_page.dart';
import 'contacts_page.dart';
import 'about_page.dart';
import 'maps_page.dart';

void main() {
  runApp(const NariAlertApp());
}

class NariAlertApp extends StatelessWidget {
  const NariAlertApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nari Alert",
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),

      /// App starts from splash screen
      initialRoute: '/splash',

      routes: {
        '/splash': (context) => const SplashScreen(),
        '/': (context) => const HomePage(),
        '/sos': (context) => const SOSPage(),
        '/contacts': (context) => const ContactsPage(),
        '/about': (context) => const AboutPage(),
        '/maps': (context) => const MapsPage(),
      },
    );
  }
}