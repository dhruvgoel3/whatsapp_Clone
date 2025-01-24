import 'package:flutter/material.dart';

import '../profile_page.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool light = true;
    bool light2 = false;
    return Scaffold(
      appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 25,
              ),
            )
          ],
          backgroundColor: Color(0xff0a131a),
          title: Text(
            "Notifications",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    (MaterialPageRoute(builder: (context) => ProfilePage())));
              },
              icon: Icon(Icons.arrow_back, color: Colors.white))),
      body: Column(
        children: [
          ListTile(
            title: Text(
              "Conversation tones",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            trailing: Switch(
              // This bool value toggles the switch.
              value: light,
              activeColor: Colors.green,
              onChanged: (bool value) {
                // This is called when the user toggles the switch.
                setState(() {
                  light = value;
                });
              },
            ),
            subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Play sounds for incoming and outgoing",
                      style: TextStyle(color: Colors.grey, fontSize: 13)),
                  Text("messages",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 13)),
                ]),
          ),
          ListTile(
            title: Text(
              "Reminders",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            trailing: Switch(
              // This bool value toggles the switch.
              value: light,
              activeColor: Colors.green,
              onChanged: (bool value) {
                // This is called when the user toggles the switch.
                setState(() {
                  light = value;
                });
              },
            ),
            subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Get ocassional reminders about",
                      style: TextStyle(color: Colors.grey, fontSize: 13)),
                  Text("messages or status updates you haven't",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 13)),
                  Text("seen",
                      style: TextStyle(color: Colors.grey, fontSize: 13)),
                ]),
          ), Divider(
            color: Colors.white10,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 300.0, top: 15),
            child: Text("Display",
                style: TextStyle(color: Colors.grey, fontSize: 14)),
          ),
          ListTile(

            title: Text(
              "Notification tone",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            subtitle:  Text("Default (Iphone Ding)",
                style: TextStyle(color: Colors.grey, fontSize: 13)),
          ),
          ListTile(
            title: Text(
              "Vibrate",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            subtitle:  Text("Default",
                style: TextStyle(color: Colors.grey, fontSize: 13)),
          ),
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}
