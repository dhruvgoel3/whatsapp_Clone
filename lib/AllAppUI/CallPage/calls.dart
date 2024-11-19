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
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
        title: Text(
          "Calls",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 25),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Favourites",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                  Text(
                    "More",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18),
            ListTile(
              leading: Container(
                height: 45,
                width: 45,
                decoration:
                    BoxDecoration(color: Colors.white54, shape: BoxShape.circle),
                child: Icon(
                  Icons.people_alt,
                  color: Colors.white,
                ),
              ),
              title: Text(
                "Group",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(
                Icons.info_outline,
                color: Colors.white,
                size: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 310, top: 15),
              child: Text(
                "Recent",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
            ),
            CallListview(),
          ],
        
        ),
      ),

      // child: Expanded(child: CallListview()),
    );
  }
}
