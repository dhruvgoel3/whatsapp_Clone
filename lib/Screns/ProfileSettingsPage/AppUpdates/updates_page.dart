
import 'package:flutter/material.dart';

class AppUpdateSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App update settings'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // App Updates Section
              const Text(
                'App updates',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              SwitchListTile(
                value: true,
                onChanged: (bool value) {},
                title: const Text('Auto-update WhatsApp'),
                subtitle: const Text('Automatically download app updates.'),
              ),
              SwitchListTile(
                value: false,
                onChanged: (bool value) {},
                title: const Text('Allow updates over any network'),
                subtitle: const Text(
                    'Download updates using mobile data when Wi-Fi is not available. Data charges may apply.'),
              ),
              const Divider(),
              // Notifications Section
              const Text(
                'Notifications',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              SwitchListTile(
                value: true,
                onChanged: (bool value) {},
                title: const Text('WhatsApp update available'),
                subtitle:
                const Text('Get notified when updates are available.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
