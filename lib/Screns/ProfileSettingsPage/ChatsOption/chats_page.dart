import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../profile_page.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    bool light = true;
    bool light2 = false;
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
          backgroundColor: Color(0xff0a131a),
          title: Text(
            "Chats",
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
            Padding(
              padding: const EdgeInsets.only(right: 300.0, top: 15),
              child: Text("Display",
                  style: TextStyle(color: Colors.grey, fontSize: 14)),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Get.defaultDialog(

                  content: Column(
                    children: [
                      ListTile(
                        title: Text("System default",style: TextStyle(color: Colors.white),),
                        leading: Icon(Icons.radio_button_checked_sharp,color: Colors.green,),
                      ),
                      ListTile(
                        title: Text("Light",style: TextStyle(color: Colors.white),),
                        leading: Icon(Icons.circle_outlined,color: Colors.grey,),
                      ),
                      ListTile(
                        title: Text("Dark",style: TextStyle(color: Colors.white),),
                        leading: Icon(Icons.circle_outlined,color: Colors.grey,),
                      ),
                    ],
                  ),
                  backgroundColor: Color(0xff2b2e33),
                    title: 'Choose theme',
                    titleStyle: TextStyle(color: Colors.white),
                    titlePadding: EdgeInsets.only(top: 20,right: 70),
                    contentPadding: EdgeInsets.only(left: 10,top: 10),

                    confirm: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Text("OK",style: TextStyle(color: Colors.green),),
                        )),
                    cancel: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3.0,bottom: 20),
                          child: Text("Cancel",style: TextStyle(color: Colors.green),),
                        )));
              },
              leading: Icon(
                Icons.brightness_6_outlined,
                color: Colors.grey,
              ),
              title: Text(
                "Theme",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                "System default",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.wallpaper,
                color: Colors.grey,
              ),
              title: Text(
                "Wallpaper",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.white10,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 270.0, top: 15),
              child: Text("Chat settings",
                  style: TextStyle(color: Colors.grey, fontSize: 14)),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(
                Icons.wallpaper,
                color: Color(0xff0a131a),
              ),
              title: Text(
                "Enter is send",
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
              subtitle: Text("Enter key will send your message",
                  style: TextStyle(color: Colors.grey, fontSize: 13)),
            ),
            ListTile(
              leading: Icon(
                Icons.wallpaper,
                color: Color(0xff0a131a),
              ),
              title: Text(
                "Media visibility",
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
                    Text("Enter key will send your message",
                        style: TextStyle(color: Colors.grey, fontSize: 13)),
                    Text("your device's gallery",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 13)),
                  ]),
            ),
            ListTile(
              onTap: () {
                Get.defaultDialog(

                    content: Column(
                      children: [
                        ListTile(
                          title: Text("Small",style: TextStyle(color: Colors.white),),
                          leading: Icon(Icons.circle_outlined,color: Colors.grey,),
                        ),
                        ListTile(
                          title: Text("Medium",style: TextStyle(color: Colors.white),),
                          leading: Icon(Icons.radio_button_checked,color: Colors.green,),
                        ),
                        ListTile(
                          title: Text("Large",style: TextStyle(color: Colors.white),),
                          leading: Icon(Icons.circle_outlined,color: Colors.grey,),
                        ),
                      ],
                    ),
                    backgroundColor: Color(0xff2b2e33),
                    title: 'Choose theme',
                    titleStyle: TextStyle(color: Colors.white),
                    titlePadding: EdgeInsets.only(top: 20,right: 70),
                    contentPadding: EdgeInsets.only(left: 10,top: 10),

                    confirm: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Text("OK",style: TextStyle(color: Colors.green),),
                        )),
                    cancel: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3.0,bottom: 20),
                          child: Text("Cancel",style: TextStyle(color: Colors.green),),
                        )));
              },
              leading: Icon(
                Icons.wallpaper,
                color: Color(0xff0a131a),
              ),
              title: Text(
                "Font size",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text("Medium",
                  style: TextStyle(color: Colors.grey, fontSize: 13)),
            ),
            ListTile(
              leading: Icon(
                Icons.wallpaper,
                color: Color(0xff0a131a),
              ),
              title: Text(
                "Voice message transcripts",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text("Read new voice messages",
                  style: TextStyle(color: Colors.grey, fontSize: 13)),
              trailing: Switch(
                // This bool value toggles the switch.
                value: light2,
                activeColor: Colors.green,
                onChanged: (bool value) {
                  // This is called when the user toggles the switch.
                  setState(() {
                    light2 = value;
                  });
                },
              ),
            ),
            Divider(
              color: Colors.white10,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 260.0, top: 15),
              child: Text("Archived chats",
                  style: TextStyle(color: Colors.grey, fontSize: 14)),
            ),
            ListTile(
              leading: Icon(
                Icons.wallpaper,
                color: Color(0xff0a131a),
              ),
              title: Text(
                "Keep chats archived",
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
                    Text("Archived chats will remain",
                        style: TextStyle(color: Colors.grey, fontSize: 13)),
                    Text("archived when you receive a new",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 13)),
                    Text("message",
                        style: TextStyle(color: Colors.grey, fontSize: 13)),
                  ]),
            ),
            Divider(
              color: Colors.white10,
              thickness: 1,
            ),
            ListTile(
              leading: Icon(
                Icons.backup_outlined,
                color: Colors.grey,
              ),
              title: Text(
                "Chat backup",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.send_to_mobile,
                color: Colors.grey,
              ),
              title: Text(
                "Transfer chats",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.update_sharp,
                color: Colors.grey,
              ),
              title: Text(
                "Chat history",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
