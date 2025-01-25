import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AppLockPage extends StatefulWidget {
  const AppLockPage({super.key});

  @override
  State<AppLockPage> createState() => _AppLockPageState();
}

class _AppLockPageState extends State<AppLockPage> {
  @override
  Widget build(BuildContext context) {
    bool light = true;
    bool light2 = false;
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
        backgroundColor: Color(0xff0a131a),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title:
        Text("Calls", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          ListTile(
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
            title: Text("Unlock with biomartic",style: TextStyle(color: Colors.white),),
            subtitle:  Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "When enabled, you'll need to use fingerprint,",
                    style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w400,),
                  ),
                  Text(
                    "face or other unique identifiers to open",
                    style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                  ),
                  Text(
                   "Whatsapp. You can still answer calls if",
                    style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "WhatApp is locked",
                    style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            thickness: 1.1,
            color: Colors.white10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 220.0),
            child: Text(
              "Automatically lock",
              style:
              TextStyle(color: Colors.grey, fontWeight: FontWeight.w400,),
            ),
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.circle_outlined,
                  color: Colors.grey,
                )),
            title: Text(
              "Immediately",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.radio_button_checked_sharp,
                  color: Colors.green,
                )),
            title: Text(
              "After 1 minute",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.circle,
                  color: Colors.grey,
                )),
            title: Text("After 30 minute",
                style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 20,),
          ListTile(
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
            title: Text("Show content in notifications",style: TextStyle(color: Colors.white),),
            subtitle:  Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Preview sender and message text inside",
                    style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w400,),
                  ),
                  Text(
                    "new messages notifications",
                    style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
