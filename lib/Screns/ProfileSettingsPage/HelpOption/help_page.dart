import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/HelpOption/HelpOnTapOptions/app_info.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/HelpOption/HelpOnTapOptions/channel_reports.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/HelpOption/HelpOnTapOptions/help_centre.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/HelpOption/HelpOnTapOptions/terms_policy.dart';

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
            onTap: ()=> Get.to(()=>HelpCentre()),
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
            onTap: ()=> Get.to(()=>TermsPolicy()),
            title: Text(
              "Terms and Privacy Policy",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            leading: Icon(Icons.file_copy_outlined,color: Colors.grey,),
          ),
          ListTile(
            onTap: ()=> Get.to(()=>ChannelReports()),
            title: Text(
              "Channel reports",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            leading: Icon(Icons.messenger_outline,color: Colors.grey,),
          ),
          ListTile(
            onTap: ()=> Get.to(()=>AppInfo()),
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
