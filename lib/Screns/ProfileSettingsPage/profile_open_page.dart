import 'package:flutter/material.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/profile_page.dart';

class ProfileOpenPage extends StatefulWidget {
  const ProfileOpenPage({super.key});

  @override
  State<ProfileOpenPage> createState() => _ProfileOpenPageState();
}

class _ProfileOpenPageState extends State<ProfileOpenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
        backgroundColor: Color(0xff0a131a),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .pop(MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            )),
        title: Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("assets/dhruv.jpg.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 95.0, left: 95),
                  child: CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: Icon(
                  Icons.perm_identity,
                  color: Colors.grey,
                ),
                title: Text(
                  "Name",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Dhruv Goel",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.info_outline,
                  color: Colors.grey,
                ),
                title: Text(
                  "About",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Self made with the help of everyone...",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.call,
                  color: Colors.grey,
                ),
                title: Text(
                  "Phone",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "+91-9034715626",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
