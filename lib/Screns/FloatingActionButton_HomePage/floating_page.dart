import 'package:flutter/material.dart';
import 'package:whatsapp/AllAppUI/ChatPage/chats.dart';
import 'package:whatsapp/Screns/FloatingActionButton_HomePage/first_listview.dart';

class FloatingPage extends StatefulWidget {
  const FloatingPage({super.key});

  @override
  State<FloatingPage> createState() => _FloatingPageState();
}

class _FloatingPageState extends State<FloatingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatPage()));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 25,
            )),
        title: Text(
          "Select contact",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 20),
        ),
        backgroundColor: Color(0xff0a131a),
        actions: [
          Icon(
            Icons.search_rounded,
            color: Colors.white,
            size: 25,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 25,
              )),
        ],
      ),
      body: FirstListview(),
    );
  }
}
