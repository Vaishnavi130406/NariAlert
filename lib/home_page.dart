import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nari Alert"),
        backgroundColor: Colors.pink,
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.pink),
              child: Text(
                "Nari Alert",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),

            ListTile(
              leading: const Icon(Icons.warning),
              title: const Text("SOS"),
              onTap: () {
                Navigator.pushNamed(context, '/sos');
              },
            ),

            ListTile(
              leading: const Icon(Icons.contact_phone),
              title: const Text("Emergency Contacts"),
              onTap: () {
                Navigator.pushNamed(context, '/contacts');
              },
            ),

            ListTile(
              leading: const Icon(Icons.map),
              title: const Text("Live Location"),
              onTap: () {
                Navigator.pushNamed(context, '/maps');
              },
            ),

            ListTile(
              leading: const Icon(Icons.info),
              title: const Text("About"),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
          ],
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              "Women Safety App",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 40),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.all(60),
                shape: const CircleBorder(),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/sos');
              },
              child: const Text(
                "SOS",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton.icon(
              icon: const Icon(Icons.map),
              label: const Text("View Live Location"),
              onPressed: () {
                Navigator.pushNamed(context, '/maps');
              },
            ),

          ],
        ),
      ),
    );
  }
}