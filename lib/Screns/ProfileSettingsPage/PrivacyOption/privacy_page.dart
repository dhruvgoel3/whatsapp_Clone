import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/PrivacyOption/PrivacyOnTapOptions/about_page.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/PrivacyOption/PrivacyOnTapOptions/advanced_page.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/PrivacyOption/PrivacyOnTapOptions/app_lock_page.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/PrivacyOption/PrivacyOnTapOptions/blocked_contacts.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/PrivacyOption/PrivacyOnTapOptions/calls_page.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/PrivacyOption/PrivacyOnTapOptions/chat_lock_page.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/PrivacyOption/PrivacyOnTapOptions/default_message_timer.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/PrivacyOption/PrivacyOnTapOptions/groups_page.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/PrivacyOption/PrivacyOnTapOptions/lastseen_and_online.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/PrivacyOption/PrivacyOnTapOptions/profile_photo.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/profile_page.dart';
import 'package:whatsapp/Screns/UpdateScreans/status_privacy_page.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool light = true;
    bool light2 = false;
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
          backgroundColor: Color(0xff0a131a),
          title: Text(
            "Privacy",
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
              thickness: 1.1,
              color: Colors.white10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 160.0),
              child: Text(
                "Who can see my personal info",
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              onTap: (){
                Get.to(() => LastseenAndOnline());
              },
              title: Text(
                "Last seen and online",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                "Nobody",
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: (){
                Get.to(() => ProfilePhoto());
              },
              title: Text(
                "Profile photo",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                "Everyone",
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: (){
                Get.to(() => AboutPage());
              },
              title: Text(
                "About",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                "Everyone",
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: (){
                Get.to(() => StatusPrivacyPage());
              },
              title: Text(
                "Status",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 15),
            ListTile(
              onTap: (){
                Get.to(() =>());
              },
              title: Text(
                "Read Recipts",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: Switch(
                // This bool value toggles the switch.
                value: light,
                activeColor: Colors.green,
                onChanged: (bool value) {
                  // This is called when the user toggles the switch.
                  setState(() {
                    light = value;
                  });
                },
              ),
              subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("If turned off, you won't send or recieve Read",
                        style: TextStyle(color: Colors.grey, fontSize: 13)),
                    SizedBox(
                      width: 3,
                    ),
                    Text("recipts. Read recipts are always sent for",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 13)),
                    Text("group chats",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 13)),
                  ]),
            ),
            Divider(
              thickness: 1.1,
              color: Colors.white10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                "Disappearing messages",
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: (){
                Get.to(() => DefaultMessageTimer());
              },
              title: Text(
                "Default message timer",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing:
                  Text("off", style: TextStyle(color: Colors.grey, fontSize: 15)),
              subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Start new chats with disappearing messages",
                        style: TextStyle(color: Colors.grey, fontSize: 13)),
                    SizedBox(
                      width: 3,
                    ),
                    Text("set to your timer",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 13)),
                  ]),
            ),
            Divider(
              thickness: 1.1,
              color: Colors.white10,
            ),
            ListTile(
              onTap: (){
                Get.to(() => GroupsPage());
              },
              title: Text(
                "Groups",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                "Everyone",
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: (){
                Get.to(() => CallsPage());
              },
              title: Text(
                "Calls",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                "Silence unknown callers",
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: (){
                Get.to(() => BlockedContacts());
              },
              title: Text(
                "Blocked contacts",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                "5",
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: (){
                Get.to(() => AppLockPage());
              },
              title: Text(
                "App lock",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                "Enabled after 1 minute",
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              onTap: (){
                Get.to(() => ChatLockPage());
              },
              title: Text(
                "Chat lock",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Allow camera effects",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Column(
                children: [
                  Text(
                    "Use effects in the camera and video calls",
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
                  ),
              Padding(
                padding: const EdgeInsets.only(right: 192.0),
                child: Text(
                  "Learn more",
                  style: TextStyle(color: Colors.lightBlue, fontWeight: FontWeight.w500),
                ),
              )],
              ),
              trailing: Switch(
                // This bool value toggles the switch.
                value: light2,
                activeColor: Colors.grey,
                onChanged: (bool value) {
                  // This is called when the user toggles the switch.
                  setState(() {
                    light2 = value;
                  });
                },
              ),
            ),
            ListTile(
              onTap: (){
                Get.to(() => AdvancedPage());
              },
              title: Text(
                "Advanced",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                "Protect IP address in calls, Disable link previews",
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ),
            Divider(
              thickness: 1.1,
              color: Colors.white10,
            ),
            ListTile(
              onTap: (){
                Get.to(() => PrivacyPage());
              },
              title: Text(
                "Privacy checkup",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                "Control your privacy and choose the right settings for you.",
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
