import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/round_button.dart';

import '../profile_page.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
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
            "Lists",
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
          Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Image.asset("assets/Screenshot 2025-01-22 214001.png"),
          )),
          SizedBox(
            height: 10,
          ),
          Text("Any list create becomes a filter at the top of",
              style: TextStyle(color: Colors.grey, fontSize: 14)),
          Text("your Chats tab.",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14)),
          SizedBox(
            height: 20,
          ),
          RoundButton(title: "Create a custom list", onTap: () {}),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.white10,
            thickness: 6,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 290.0),
            child: Text("Your lists",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 14)),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            title: Text(
              "Unread",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              "Present",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
            ),
          ),
          ListTile(
            title: Text(
              "Favourites",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              "Group",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
            ),
          ),
          ListTile(
            title: Text(
              "Groups",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              "Present",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
            ),
          ),
          Divider(
            color: Colors.white10,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 240.0),
            child: Text("Available presets",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 14)),
          ),
          SizedBox(
            height: 20,
          ),
          Text("If you remove a preset list like unread or Group,It will",
              style: TextStyle(color: Colors.grey, fontSize: 14)),
          Text("become available here",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14)),
        ],
      ),
    );
  }
}
