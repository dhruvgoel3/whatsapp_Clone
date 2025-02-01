import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:whatsapp/utils/switch.dart';

import '../profile_page.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
          backgroundColor: Color(0xff0a131a),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 25,
              ),
            )
          ],
          title: Text(
            "Notifications",
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
              title: Text(
                "Conversation tones",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: Utils().getSwitch(),
              subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Play sounds for incoming and outgoing",
                        style: TextStyle(color: Colors.grey, fontSize: 13)),
                    Text("messages",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 13)),
                  ]),
            ),
            ListTile(
              title: Text(
                "Reminders",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: Utils().getSwitch(),
              subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Get ocassional reminders about",
                        style: TextStyle(color: Colors.grey, fontSize: 13)),
                    Text("messages or status updates you haven't",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 13)),
                    Text("seen",
                        style: TextStyle(color: Colors.grey, fontSize: 13)),
                  ]),
            ),
            Divider(
              color: Colors.white10,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 300.0, top: 15),
              child: Text("Messages",
                  style: TextStyle(color: Colors.grey, fontSize: 14)),
            ),
            ListTile(
              title: Text(
                "Notification tone",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text("Default (Iphone Ding)",
                  style: TextStyle(color: Colors.grey, fontSize: 13)),
            ),
            ListTile(
              onTap: () {
                Get.defaultDialog(
                    backgroundColor: Color(0xff2b2e33),
                    content: Column(
                      children: [
                        ListTile(
                          leading: Icon(CupertinoIcons.circle,color: Colors.grey,),
                          title: Text("Off",style: TextStyle(color: Colors.white),),
                        ),
                        ListTile(
                          leading: Icon(Icons.radio_button_checked_sharp,color: Colors.green,),
                          title: Text("Default",style: TextStyle(color: Colors.white),),
                        ),
                        ListTile(
                          leading: Icon(CupertinoIcons.circle,color: Colors.grey,),
                          title: Text("Short",style: TextStyle(color: Colors.white),),
                        ),
                        ListTile(
                          leading: Icon(CupertinoIcons.circle,color: Colors.grey,),
                          title: Text("Long",style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ),
                    title: 'Vibrate',
                    titleStyle: TextStyle(color: Colors.white, fontSize: 19,),
                    titlePadding: EdgeInsets.only(top: 20, right: 30),
                    confirm: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Text(
                            "OK",
                            style: TextStyle(color: Colors.green),
                          ),
                        )),
                    cancel: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3.0, bottom: 20),
                          child: Text(
                            "Cancel",
                            style: TextStyle(color: Colors.green),
                          ),
                        )));
              },
              title: Text(
                "Vibrate",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text("Default",
                  style: TextStyle(color: Colors.grey, fontSize: 13)),
            ),
            ListTile(
              onTap: () {
                Get.defaultDialog(
                    content: Column(
                      children: [
                        ListTile(
                          title: Text("System default",style: TextStyle(color: Colors.white),),
                          leading: Icon(Icons.radio_button_checked,color: Colors.green,),
                        ),
                        ListTile(
                          title: Text("Large",style: TextStyle(color: Colors.white),),
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
              title: Text(
                "Light",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text("White",
                  style: TextStyle(color: Colors.grey, fontSize: 13)),
            ),
            ListTile(
              title: Text(
                "Use high priority notifications",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: Utils().getSwitch(),
              subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Show previous of notifications at the top",
                        style: TextStyle(color: Colors.grey, fontSize: 13)),
                    Text("of the screen",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 13)),
                  ]),
            ),
            ListTile(
              title: Text(
                "Reaction notifications",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: Utils().getSwitch(),
              subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Show notifications for reactions to",
                        style: TextStyle(color: Colors.grey, fontSize: 13)),
                    Text("messages  you send",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 13)),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 300.0, top: 15),
              child: Text("Groups",
                  style: TextStyle(color: Colors.grey, fontSize: 14)),
            ),
            ListTile(
              title: Text(
                "Notification tone",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text("Default (Iphone Ding)",
                  style: TextStyle(color: Colors.grey, fontSize: 13)),
            ),
            ListTile(
              onTap: () {
                Get.defaultDialog(
                    backgroundColor: Color(0xff2b2e33),
                    content: Column(
                      children: [
                        ListTile(
                          leading: Icon(CupertinoIcons.circle,color: Colors.grey,),
                          title: Text("Off",style: TextStyle(color: Colors.white),),
                        ),
                        ListTile(
                          leading: Icon(Icons.radio_button_checked_sharp,color: Colors.green,),
                          title: Text("Default",style: TextStyle(color: Colors.white),),
                        ),
                        ListTile(
                          leading: Icon(CupertinoIcons.circle,color: Colors.grey,),
                          title: Text("Short",style: TextStyle(color: Colors.white),),
                        ),
                        ListTile(
                          leading: Icon(CupertinoIcons.circle,color: Colors.grey,),
                          title: Text("Long",style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ),
                    title: 'Vibrate',
                    titleStyle: TextStyle(color: Colors.white, fontSize: 19,),
                    titlePadding: EdgeInsets.only(top: 20, right: 30),
                    confirm: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Text(
                            "OK",
                            style: TextStyle(color: Colors.green),
                          ),
                        )),
                    cancel: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3.0, bottom: 20),
                          child: Text(
                            "Cancel",
                            style: TextStyle(color: Colors.green),
                          ),
                        )));
              },
              title: Text(
                "Vibrate",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text("Default",
                  style: TextStyle(color: Colors.grey, fontSize: 13)),
            ),
            ListTile(
              onTap: () {
                Get.defaultDialog(
                    content: Column(
                      children: [
                        ListTile(
                          title: Text("System default",style: TextStyle(color: Colors.white),),
                          leading: Icon(Icons.radio_button_checked,color: Colors.green,),
                        ),
                        ListTile(
                          title: Text("Large",style: TextStyle(color: Colors.white),),
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

              title: Text(
                "Light",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text("White",
                  style: TextStyle(color: Colors.grey, fontSize: 13)),
            ),
            ListTile(
              title: Text(
                "Use high priority notifications",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: Utils().getSwitch(),
              subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Show previous of notifications at the top",
                        style: TextStyle(color: Colors.grey, fontSize: 13)),
                    Text("of the screen",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 13)),
                  ]),
            ),
            ListTile(
              title: Text(
                "Reaction notifications",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: Utils().getSwitch(),
              subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Show notifications for reactions to",
                        style: TextStyle(color: Colors.grey, fontSize: 13)),
                    Text("messages  you send",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 13)),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 300.0, top: 15),
              child: Text("Calls",
                  style: TextStyle(color: Colors.grey, fontSize: 14)),
            ),
            ListTile(
              title: Text(
                "Ringtone",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text("Default (Iphone Ding)",
                  style: TextStyle(color: Colors.grey, fontSize: 13)),
            ),
            ListTile(
              onTap: () {
                Get.defaultDialog(
                    backgroundColor: Color(0xff2b2e33),
                    content: Column(
                      children: [
                        ListTile(
                          leading: Icon(CupertinoIcons.circle,color: Colors.grey,),
                          title: Text("Off",style: TextStyle(color: Colors.white),),
                        ),
                        ListTile(
                          leading: Icon(Icons.radio_button_checked_sharp,color: Colors.green,),
                          title: Text("Default",style: TextStyle(color: Colors.white),),
                        ),
                        ListTile(
                          leading: Icon(CupertinoIcons.circle,color: Colors.grey,),
                          title: Text("Short",style: TextStyle(color: Colors.white),),
                        ),
                        ListTile(
                          leading: Icon(CupertinoIcons.circle,color: Colors.grey,),
                          title: Text("Long",style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ),
                    title: 'Vibrate',
                    titleStyle: TextStyle(color: Colors.white, fontSize: 19,),
                    titlePadding: EdgeInsets.only(top: 20, right: 30),
                    confirm: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: Text(
                            "OK",
                            style: TextStyle(color: Colors.green),
                          ),
                        )),
                    cancel: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3.0, bottom: 20),
                          child: Text(
                            "Cancel",
                            style: TextStyle(color: Colors.green),
                          ),
                        )));
              },
              title: Text(
                "Vibrate",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text("Default",
                  style: TextStyle(color: Colors.grey, fontSize: 13)),
            ),
            Divider(
              color: Colors.white10,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 300.0, top: 15),
              child: Text("Status",
                  style: TextStyle(color: Colors.grey, fontSize: 14)),
            ),
            ListTile(

              title: Text(
                "Reactions",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: Utils().getSwitch(),
              subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Show notifications when you get likes on a status",
                        style: TextStyle(color: Colors.grey, fontSize: 13)),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
// finally
// done