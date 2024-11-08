import 'package:flutter/material.dart';
import 'package:whatsapp/ChatPage/listview.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
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
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 25,
              ))
        ],
      ),

  body:  Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xff0a131a)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    height: size.height * 0.06,
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
                Expanded(child: CloningList()),
              ],
            ),
        ),
      );
  }
}
