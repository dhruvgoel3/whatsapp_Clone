import 'package:flutter/material.dart';
import 'package:whatsapp/AllAppUI/CallPage/calls.dart';
import 'package:whatsapp/AllAppUI/ChatPage/listview.dart';
import 'package:whatsapp/AllAppUI/ChatPage/popupbutton.dart';
import 'package:whatsapp/AllAppUI/CommunityPage/communities.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/profile_page.dart';
import 'package:whatsapp/AllAppUI/UpdatePage/updates.dart';
import 'package:whatsapp/bottombar.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
      appBar: AppBar(
        title: Text(
          "Whatsapp",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Color(0xff0a131a),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
                size: 25,
              )),
          Popmenubuttonpage(),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Color(0xff0a131a)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: GestureDetector(
                onTap: () {
                  print("Hello Subscriber");
                },
                onLongPress: () {
                  print("Container is pressed for a long time");
                },

                child: Container(
                  height: size.height * 0.055,
                  width: size.width * 0.923,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff272c30),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/Ai circle.jpg"),
                          radius: 16,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Ask meta AI or Search",
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff3f4649),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 18,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: size.height*0.04,
                    width: size.width*0.1,
                    decoration: BoxDecoration(
                        color: const Color(0xff20292f),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: const Center(child: Text("All",style: TextStyle(color: Colors.white38))),
                  ),
                  Container(
                    height: size.height*0.04,
                    width: size.width*0.18,
                    decoration: BoxDecoration(
                        color: const Color(0xff20292f),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: const Center(child: Text("Unread",style: TextStyle(color: Colors.white38))),
                  ),

                  Container(
                    height:size.height*0.04,
                    width: size.width*0.24,
                    decoration: BoxDecoration(
                        color: const Color(0xff20292f),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: const Center(child: Text("Favourities",style: TextStyle(color: Colors.white38),)),
                  ),

                  Container(
                    height: size.height*0.04,
                    width: size.width*0.17,
                    decoration: BoxDecoration(
                        color: const Color(0xff20292f),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: const Center(child: Text("Groups",style: TextStyle(color: Colors.white38),)),
                  ),
                  Container(
                    height: size.height*0.04,
                    width: size.width*0.1,
                    decoration: BoxDecoration(
                        color: const Color(0xff20292f),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: const Center(child: Icon(Icons.add,color: Colors.white38,)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 14,),
            Expanded(child: CloningList()),
          ],
        ),
      ),
    );
  }
}
