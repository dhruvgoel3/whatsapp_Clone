import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../profile_page.dart';

class StorageAndData extends StatefulWidget {
  const StorageAndData({super.key});

  @override
  State<StorageAndData> createState() => _StorageAndDataState();
}

class _StorageAndDataState extends State<StorageAndData> {
  @override
  Widget build(BuildContext context) {
    bool light = true;
    bool light2 = false;
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
          backgroundColor: Color(0xff0a131a),
          title: Text(
            "Storage and updates",
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
            title: Text(
              "Manage storage",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            leading: Icon(
              Icons.folder_copy_outlined,
              color: Colors.grey,
            ),
            subtitle: Text("5.5 GB",
                style: TextStyle(color: Colors.grey, fontSize: 13)),
          ),
          ListTile(
            title: Text(
              "Network usage",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            leading: Icon(
              Icons.data_saver_off,
              color: Colors.grey,
            ),
            subtitle: Text("10.8 GB sent",
                style: TextStyle(color: Colors.grey, fontSize: 13)),
          ),
          ListTile(
            leading: Icon(
              Icons.wallpaper,
              color: Color(0xff0a131a),
            ),
            title: Text(
              "Use less data for calls",
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
          ),
          ListTile(
            leading: Icon(
              Icons.wallpaper,
              color: Color(0xff0a131a),
            ),
            title: Text(
              "Proxy",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            subtitle:
                Text("Off", style: TextStyle(color: Colors.grey, fontSize: 13)),
          ),
          Divider(
            color: Colors.white10,
            thickness: 1,
          ),
          ListTile(
            onTap: () {
              Get.defaultDialog(
                  content: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Select the quality for photod and videos",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "to be sent at in chats",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      ListTile(
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Standard quality",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            Text(
                              "Faster to send,smaller file size",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        ),
                        leading:
                            Icon(Icons.circle_outlined, color: Colors.grey),
                      ),
                      ListTile(
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "HD quality",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            Text(
                              "Slower to send,can be 6 times larger",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        ),
                        leading:
                            Icon(Icons.radio_button_checked, color: Colors.green),
                      ),
                    ],
                  ),
                  backgroundColor: Color(0xff2b2e33),
                  title: 'Choose theme',
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
              Icons.hd_sharp,
              color: Colors.grey,
            ),
            title: Text(
              "Media upload quality",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            subtitle: Text("Standard quality",
                style: TextStyle(color: Colors.grey, fontSize: 13)),
          ),
          Divider(
            color: Colors.white10,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 210.0, top: 10),
            child: Text("Media auto-download",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w600)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 80.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Voice messages are always automatically",
                    style: TextStyle(color: Colors.grey, fontSize: 14)),
                Text("downloaded",
                    style: TextStyle(color: Colors.grey, fontSize: 14)),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.hd_sharp,
              color: Color(0xff0a131a),
            ),
            title: Text(
              "When using mobile data",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            subtitle: Text("Photos",
                style: TextStyle(color: Colors.grey, fontSize: 13)),
          ),
          ListTile(
            leading: Icon(
              Icons.hd_sharp,
              color: Color(0xff0a131a),
            ),
            title: Text(
              "When connected on Wi-Fi",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            subtitle: Text("All media",
                style: TextStyle(color: Colors.grey, fontSize: 13)),
          ),
          ListTile(
            leading: Icon(
              Icons.hd_sharp,
              color: Color(0xff0a131a),
            ),
            title: Text(
              "When roaming",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            subtitle: Text("No media",
                style: TextStyle(color: Colors.grey, fontSize: 13)),
          ),
        ],
      ),
    );
  }
}
