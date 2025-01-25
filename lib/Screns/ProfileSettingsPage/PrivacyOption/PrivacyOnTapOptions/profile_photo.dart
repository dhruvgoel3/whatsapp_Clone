import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
        backgroundColor: Color(0xff0a131a),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title:
        Text("Profile photo", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 150.0, top: 12, bottom: 7),
            child: Text(
              "Who can see my profile photo",
              style:
              TextStyle(color: Colors.white54, fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.radio_button_checked,
                  color: Colors.green,
                )),
            title: Text(
              "Everyone",
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
            title: Text(
              "My contacts",
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
            title: Text("My contacts except...",
                style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.circle_outlined,
                color: Colors.grey,
              ),
            ),
            title: Text("Nobody",
                style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
