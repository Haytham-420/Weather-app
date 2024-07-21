import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // Logo app
          const SizedBox(
            height: 100,
            child: DrawerHeader(
              child: Center(
                child: Text(
                  'Weather App',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),

          // Home tap
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => Navigator.pushNamed(context, '/home_screen'),
          ),

          // Hourly tap
          ListTile(
            leading: const Icon(Icons.access_time),
            title: const Text('Hourly Forecast'),
            onTap: () => Navigator.pushNamed(context, '/hours_screen'),
          ),

          // Daily tap
          ListTile(
            leading: const Icon(Icons.calendar_month),
            title: const Text('Daily Forecast'),
            onTap: () => Navigator.pushNamed(context, '/daies_screen'),
          ),

          // Cities tap
          ListTile(
            leading: const Icon(Icons.location_city),
            title: const Text('Cities'),
            onTap: () => Navigator.pushNamed(context, '/cities_screen'),
          ),
        ],
      ),
    );
  }
}
