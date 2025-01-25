import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class GroupsPage extends StatelessWidget {
  const GroupsPage({super.key});

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
        Text("Groups", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 180.0, top: 12, bottom: 7),
            child: Text(
              "Who can add me to groups",
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
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Admins who can't add you to a group will have the",
                  style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                ),
                Text(
                  "option of inviting you privatly instead.",
                  style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 15,),
                Text(
                  "This settings does not apply to community",
                  style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                ),
                Text(
                  "announcement groups.If you're added to a",
                  style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                ),
                Text(
                  "community, you'll always be added to a community",
                  style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                ),
                Text(
                  "announcement group.",
                  style:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
