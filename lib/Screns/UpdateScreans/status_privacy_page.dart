import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusPrivacyPage extends StatelessWidget {
  const StatusPrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
        backgroundColor: Color(0xff0a131a),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Text("Status privacy", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Divider(color: Colors.white12),
          Padding(
            padding: const EdgeInsets.only(right: 130.0, top: 12, bottom: 7),
            child: Text(
              "Who can see my status updates",
              style:
                  TextStyle(color: Colors.white54, fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.checkmark_circle_fill,
                  color: Colors.green,
                )),
            title: Text(
              "My contacts",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.checkmark_circle_fill)),
            title: Text("My contacts except...",
                style: TextStyle(color: Colors.white)),
            trailing: Text("0 excluded",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.6)),
          ),
          ListTile(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.checkmark_circle_fill),
            ),
            title: Text("Only share with...",
                style: TextStyle(color: Colors.white)),
            trailing: Text("0 included",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.6)),
          ),
          Divider(color: Colors.white12),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Text("Share my status and updates across my accounts",
                style: TextStyle(
                    color: Colors.white54, fontWeight: FontWeight.w600)),
          ),
          SizedBox(height: 5),
          ListTile(
            leading: Icon(
              Icons.facebook_outlined,
              size: 33,
            ),
            title: Text("Facebook",
                style: TextStyle(color: Colors.white, fontSize: 16)),
            subtitle: Text("Tap to add your account",
                style: TextStyle(color: Colors.white54)),
          ),
          Divider(color: Colors.white12),
          SizedBox(height: 7),
          Padding(
            padding: const EdgeInsets.only(right: 47),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Changes to your privacy settings won't affect",
                    style: TextStyle(color: Colors.white54, fontSize: 14.5)),
                Text("status updates that yo've sent already.",
                    style: TextStyle(color: Colors.white54, fontSize: 14.5))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
