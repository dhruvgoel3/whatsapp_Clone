import 'package:flutter/material.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/AccountOption/Account_Page/account_page.dart';

class SecurityOptions extends StatefulWidget {
  const SecurityOptions({super.key});

  @override
  State<SecurityOptions> createState() => _SecurityOptionsState();
}

class _SecurityOptionsState extends State<SecurityOptions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
          backgroundColor: Color(0xff0a131a),
          title: Text(
            "Security notifications",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          ),
          leading: Icon(Icons.arrow_back, color: Colors.white)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 1),
            child: Image.asset(
              "assets/WhatsApp Image 2025-01-20 at 21.05.59_6396be11.jpg",
              height: 120,
            ),
          ),
          SizedBox(height: 40),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your chats and calls are private",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("End-to-end encryption keeps your personal",
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
                Text("messages and calls between you and the people",
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
                Text("you choose.Not even WhatsApp can read or listen ",
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
                Text("to them. This includes your:",
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
              ]),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.message_outlined,
                      color: Colors.green,
                      size: 23,
                    ),
                    SizedBox(width: 13),
                    Text(
                      "Text and voice messages",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.green,
                      size: 23,
                    ),
                    SizedBox(width: 13),
                    Text(
                      "Audio and video calls",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.perm_media_outlined,
                      color: Colors.green,
                      size: 23,
                    ),
                    SizedBox(width: 13),
                    Text(
                      "Photos, videos and documents",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.green,
                      size: 23,
                    ),
                    SizedBox(width: 13),
                    Text(
                      "Location sharing",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.update,
                      color: Colors.green,
                      size: 23,
                    ),
                    SizedBox(width: 13),
                    Text(
                      "Status updates",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  "Learn more",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Show security notifications on this device",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text("Get notified when your security code changes",
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
                Text("for a contacts phone in an end-to-end",
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
                Text("encrypted chat.If you have multiple devices,",
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
                Text("this setting must be enabled on each device",
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
                Row(children: [
                  Text("where you want to get notifications",
                      style: TextStyle(color: Colors.grey, fontSize: 15)),
                  Text("more",
                      style: TextStyle(color: Colors.blue, fontSize: 15)),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
