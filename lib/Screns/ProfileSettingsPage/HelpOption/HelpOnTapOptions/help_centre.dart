import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelpCentre extends StatefulWidget {
  const HelpCentre({super.key});

  @override
  State<HelpCentre> createState() => _HelpCentreState();
}

class _HelpCentreState extends State<HelpCentre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
          backgroundColor: Color(0xff0a131a),
          title: Text(
            "Storage and updates",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          ),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back, color: Colors.white))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              thickness: 1,
              color: Colors.white10,
            ),
            Image.asset("assets/Screenshot 2025-01-26 213543.png"),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search_rounded,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Search Help Center",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 280.0, top: 10),
              child: Text(
                "Help topics",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(
                Icons.flag,
                color: Colors.green,
                size: 25,
              ),
              title: Text(
                "Get statrted",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.message,
                color: Colors.green,
                size: 24,
              ),
              title: Text(
                "Chats",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.warehouse,
                color: Colors.green,
                size: 25,
              ),
              title: Text(
                "Connect with Buisness",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.call,
                color: Colors.green,
                size: 25,
              ),
              title: Text(
                "Voice and Video calls",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.people,
                color: Colors.green,
                size: 25,
              ),
              title: Text(
                "Communities",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person_pin,
                color: Colors.green,
                size: 25,
              ),
              title: Text(
                "Channels",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.lock,
                color: Colors.green,
                size: 25,
              ),
              title: Text(
                "Privacy, Safety and Security",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_box,
                color: Colors.green,
                size: 25,
              ),
              title: Text(
                "Accounts and Account Bans",
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.payment,
                color: Colors.green,
                size: 25,
              ),
              title: Text(
                "Payments",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//done