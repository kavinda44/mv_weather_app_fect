import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _notificationsEnabled = true; // Default notification state
  bool _locationServicesEnabled = true; // Default location services state

  // Method to handle location services permission
  Future<void> _checkLocationPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      // Request permission if denied
      permission = await Geolocator.requestPermission();
    }
    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle it accordingly
      // You can show an alert dialog or navigate to settings
    } else {
      // Permission granted, you can access location services
      // Implement your location service logic here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'General',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                'Notifications',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
              trailing: Switch(
                value: _notificationsEnabled,
                onChanged: (value) {
                  setState(() {
                    _notificationsEnabled = value;
                    // Handle notification logic here (e.g., enable/disable notifications)
                  });
                },
              ),
            ),
            ListTile(
              title: const Text(
                'Location Services',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
              trailing: Switch(
                value: _locationServicesEnabled,
                onChanged: (value) {
                  setState(() {
                    _locationServicesEnabled = value;
                    if (value) {
                      // Check and request location permission if enabled
                      _checkLocationPermission();
                    } else {
                      // Handle disabling location services here
                    }
                  });
                },
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'About',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                'App Version',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
              subtitle: const Text(
                '1.0.0',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
            ),
            ListTile(
              title: const Text(
                'Privacy Policy',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
              onTap: () {
                // Navigate to Privacy Policy page
              },
            ),
            ListTile(
              title: const Text(
                'Terms of Service',
                style: TextStyle(fontFamily: 'Poppins'),
              ),
              onTap: () {
                // Navigate to Terms of Service page
              },
            ),
          ],
        ),
      ),
    );
  }
}
