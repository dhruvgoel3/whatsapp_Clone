import 'package:flutter/material.dart';

class ChatLockPage extends StatelessWidget {
  const ChatLockPage({super.key});

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
          title: Text("Chat lock", style: TextStyle(color: Colors.white)),
        ),
        body: Column(children: [
          SizedBox(
            height: 30,
          ),
          Center(child: Image.asset("assets/Screenshot 2025-01-25 131153.png")),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text(
                "Chat lock keeps your chats locked",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                "and hidden",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "If you have locked chats.pull down on your chat list or",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "type your secret code in the search bar to find them",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Learn more",
                      style: TextStyle(
                          color: Colors.lightBlue, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ]),
            ],
          ),
          ListTile(
              title: Text(
                "Unlock and clear locked chats",
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "If youforgot your secert code,you can clear it.this",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "will also unlock and clear messages,photos and",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "videos in locked chats.",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w400),
                    ),

                  ]))
        ]));
  }
}
