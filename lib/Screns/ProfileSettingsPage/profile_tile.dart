import 'package:flutter/material.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/profilelistview_page.dart';

class ProfileTile extends StatefulWidget {
  const ProfileTile({super.key});

  @override
  State<ProfileTile> createState() => _ProfileTileState();
}

class _ProfileTileState extends State<ProfileTile> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Divider(
          color: Colors.white12,
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/dhruv image neww one mc d.jpg"),
            radius: 32,
          ),
          title: Text(
            "Dhruv Goel",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 20),
          ),
          subtitle: Text(
            "Never Give Up",
            style: TextStyle(color: Colors.white),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.qr_code_scanner_rounded,
                    color: Colors.green,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_circle_outline,
                    color: Colors.green,
                  ))
            ],
          ),
        ),
        Divider(color: Colors.white12,),
        ProfilelistviewPage(),
      ],
    );
  }
}
