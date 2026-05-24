import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  void callNumber(String number) async {
    final Uri call = Uri.parse("tel:$number");
    await launchUrl(call);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Emergency Contacts"),
        backgroundColor: Colors.pink,
      ),

      body: ListView(
        children: [

          ListTile(
            leading: const Icon(Icons.local_police),
            title: const Text("Police"),
            subtitle: const Text("100"),
            trailing: IconButton(
              icon: const Icon(Icons.call),
              onPressed: () => callNumber("100"),
            ),
          ),

          ListTile(
            leading: const Icon(Icons.support_agent),
            title: const Text("Women Helpline"),
            subtitle: const Text("1091"),
            trailing: IconButton(
              icon: const Icon(Icons.call),
              onPressed: () => callNumber("1091"),
            ),
          ),

          ListTile(
            leading: const Icon(Icons.family_restroom),
            title: const Text("Family Contact"),
            subtitle: const Text("+91 XXXXXXXX"),
            trailing: IconButton(
              icon: const Icon(Icons.call),
              onPressed: () => callNumber("+91XXXXXXXX"),
            ),
          ),

        ],
      ),
    );
  }
}