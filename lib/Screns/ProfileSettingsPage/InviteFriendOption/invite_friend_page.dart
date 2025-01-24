import 'package:flutter/material.dart';

import '../profile_page.dart';

class InviteFriendPage extends StatelessWidget {
  const InviteFriendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.search_rounded,
                color: Colors.white,
              ),
            )
          ],
          backgroundColor: Color(0xff0a131a),
          title: Text(
            "Invite a friend",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    (MaterialPageRoute(builder: (context) => ProfilePage())));
              },
              icon: Icon(Icons.arrow_back, color: Colors.white))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              color: Colors.white10,
              thickness: 1,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.share_outlined,
                  color: Colors.black,
                ),
              ),
              title: Text(
                "Share link",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 270.0, top: 15),
              child: Text("From contacts",
                  style: TextStyle(color: Colors.grey, fontSize: 14)),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                radius: 23,
              ),
              title: Text(
                "9416315626",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              subtitle: Text("+91 9416315626",style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
              trailing: Text("Invite",style: TextStyle(color: Colors.green,fontSize: 17,fontWeight: FontWeight.w400)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                radius: 23,
              ),
              title: Text(
                "9416315626",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              subtitle: Text("+91 9416315626",style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
              ),
              trailing: Text("Invite",style: TextStyle(color: Colors.green,fontSize: 17,fontWeight: FontWeight.w400)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                radius: 23,
              ),
              title: Text(
                "9416315626",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              subtitle: Text("+91 9416315626",style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
              ),
              trailing: Text("Invite",style: TextStyle(color: Colors.green,fontSize: 17,fontWeight: FontWeight.w400)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                radius: 23,
              ),
              title: Text(
                "9416315626",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              subtitle: Text("+91 9416315626",style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
              ),
              trailing: Text("Invite",style: TextStyle(color: Colors.green,fontSize: 17,fontWeight: FontWeight.w400)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                radius: 23,
              ),
              title: Text(
                "9416315626",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              subtitle: Text("+91 9416315626",style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
              ),
              trailing: Text("Invite",style: TextStyle(color: Colors.green,fontSize: 17,fontWeight: FontWeight.w400)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                radius: 23,
              ),
              title: Text(
                "9416315626",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              subtitle: Text("+91 9416315626",style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
              ),
              trailing: Text("Invite",style: TextStyle(color: Colors.green,fontSize: 17,fontWeight: FontWeight.w400)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                radius: 23,
              ),
              title: Text(
                "9416315626",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              subtitle: Text("+91 9416315626",style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
              ),
              trailing: Text("Invite",style: TextStyle(color: Colors.green,fontSize: 17,fontWeight: FontWeight.w400)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                radius: 23,
              ),
              title: Text(
                "9416315626",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              subtitle: Text("+91 9416315626",style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
              ),
              trailing: Text("Invite",style: TextStyle(color: Colors.green,fontSize: 17,fontWeight: FontWeight.w400)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                radius: 23,
              ),
              title: Text(
                "9416315626",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              subtitle: Text("+91 9416315626",style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
              ),
              trailing: Text("Invite",style: TextStyle(color: Colors.green,fontSize: 17,fontWeight: FontWeight.w400)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                radius: 23,
              ),
              title: Text(
                "9416315626",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              subtitle: Text("+91 9416315626",style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
              ),
              trailing: Text("Invite",style: TextStyle(color: Colors.green,fontSize: 17,fontWeight: FontWeight.w400)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                radius: 23,
              ),
              title: Text(
                "9416315626",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              subtitle: Text("+91 9416315626",style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
              ),
              trailing: Text("Invite",style: TextStyle(color: Colors.green,fontSize: 17,fontWeight: FontWeight.w400)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                radius: 23,
              ),
              title: Text(
                "9416315626",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              subtitle: Text("+91 9416315626",style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
              ),
              trailing: Text("Invite",style: TextStyle(color: Colors.green,fontSize: 17,fontWeight: FontWeight.w400)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                radius: 23,
              ),
              title: Text(
                "9416315626",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              subtitle: Text("+91 9416315626",style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
              ),
              trailing: Text("Invite",style: TextStyle(color: Colors.green,fontSize: 17,fontWeight: FontWeight.w400)),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                radius: 23,
              ),
              title: Text(
                "9416315626",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 17),
              ),
              subtitle: Text("+91 9416315626",style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
              ),
              trailing: Text("Invite",style: TextStyle(color: Colors.green,fontSize: 17,fontWeight: FontWeight.w400)),
            ),
        
        
          ],
        ),
      ),
    );
  }
}
