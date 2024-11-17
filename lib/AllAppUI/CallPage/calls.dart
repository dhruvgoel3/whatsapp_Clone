import 'package:flutter/material.dart';
import 'package:whatsapp/AllAppUI/CallPage/call_listview.dart';
import 'package:whatsapp/Screns/CallScreans/call_log.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/profile_page.dart';
import 'package:whatsapp/bottombar.dart';

import 'call_listile.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calls",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Color(0xff0a131a),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
                size: 25,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 25,
              )),
          PopupMenuButton(
            onSelected: (value) {
              if (value == 'call_log') {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const CallLog()));
              } else if (value == 'settings') {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ProfilePage()));
              }
            },
            color: Color(0xff0a131a),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                    value: 'call_log',
                    child: Text(
                      "Clear call log",
                      style: TextStyle(color: Colors.white),
                    )),
                PopupMenuItem(
                    value: 'settings',
                    child: Text(
                      "settings",
                      style: TextStyle(color: Colors.white),
                    ))
              ];
            },
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Color(0xff0a131a)),
        child: Expanded(child: CallListview()),
      ),
    );
  }
}
