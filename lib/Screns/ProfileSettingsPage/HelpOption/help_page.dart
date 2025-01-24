import 'package:flutter/material.dart';

import '../profile_page.dart';
class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
          backgroundColor: Color(0xff0a131a),
          title: Text(
            "Help",
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
          Divider(
            color: Colors.white10,
            thickness: 1,
          ),
          ListTile(
            title: Text(
              "Help centre",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            subtitle: Text("Get help,contact us)",
                style: TextStyle(color: Colors.grey, fontSize: 13)),
            leading: Icon(Icons.help_outline,color: Colors.grey,),
          ),
          ListTile(
            title: Text(
              "Terms and Privacy Policy",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            leading: Icon(Icons.file_copy_outlined,color: Colors.grey,),
          ),
          ListTile(
            title: Text(
              "Channel reports",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            leading: Icon(Icons.messenger_outline,color: Colors.grey,),
          ),
          ListTile(
            title: Text(
              "App info",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            leading: Icon(Icons.info_outline,color: Colors.grey,),
          ),
        ],
      ),
    );
  }
}
