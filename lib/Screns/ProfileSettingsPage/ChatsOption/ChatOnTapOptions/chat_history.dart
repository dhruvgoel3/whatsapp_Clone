import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/ChatsOption/ChatOnTapOptions/export_chat.dart';

class ChatHistory extends StatelessWidget {
  const ChatHistory({super.key});

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
        title: Text("Chat history", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Divider(
            thickness: 0.5,
            color: Colors.white10,
          ),
          ListTile(
            onTap: ()=>Get.to(()=>ExportChat()),
            leading: Icon(
              Icons.upgrade_sharp,
              color: Colors.grey,
              size: 24,
            ),
            title: Text(
              "Export chat",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            onTap: () {
              Get.defaultDialog(
                  backgroundColor: Color(0xff2b2e33),
                  content: Text("ok",style: TextStyle(color: Color(0xff2b2e33)),),
                  title: 'Are you sure you want to archive ALL chats ?',
                  titleStyle: TextStyle(color: Colors.grey, fontSize: 14),
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
            leading: Icon(
              Icons.archive_outlined,
              color: Colors.grey,
              size: 24,
            ),
            title: Text(
              "Archive all chats",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            onTap: () {
              Get.defaultDialog(
                  content: Column(
                    children: [
                      ListTile(
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Also delete media recived in chats",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Text(
                              "from the device gallery",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                          ],
                        ),
                        leading: Icon(
                          Icons.crop_square,
                          color: Colors.grey,
                        ),
                      ),
                      ListTile(
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Delete starred messages",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                          ],
                        ),
                        leading: Icon(
                          Icons.crop_square,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  backgroundColor: Color(0xff2b2e33),
                  title: 'Clear all chats',
                  titleStyle: TextStyle(color: Colors.white),
                  titlePadding: EdgeInsets.only(top: 20, right: 70),
                  contentPadding: EdgeInsets.only(left: 10, top: 10),
                  confirm: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Text(
                          "Clear chats",
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
            leading: Icon(
              Icons.arrow_circle_right_rounded,
              color: Colors.grey,
              size: 24,
            ),
            title: Text(
              "Clear all chats",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          ListTile(
            onTap: () {
              Get.defaultDialog(
                  content: Column(
                    children: [
                      ListTile(
                        title: Column(
                          children: [
                            Text(
                              "Also delete media recived in chats",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Text(
                              "from the device gallery",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                          ],
                        ),
                        leading: Icon(
                          Icons.check_box,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  backgroundColor: Color(0xff2b2e33),
                  title: 'Delete all chats ?',
                  titleStyle: TextStyle(color: Colors.white),
                  titlePadding: EdgeInsets.only(top: 20, right: 70),
                  contentPadding: EdgeInsets.only(left: 10, top: 10),
                  confirm: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Text(
                          "Delete chats",
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
            leading: Icon(
              Icons.delete_outline,
              color: Colors.grey,
              size: 24,
            ),
            title: Text(
              "Delete all chats",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          )
        ],
      ),
    );
  }
}
