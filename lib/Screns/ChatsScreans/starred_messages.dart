import 'package:flutter/material.dart';

class StarredMessages extends StatefulWidget {
  const StarredMessages({super.key});

  @override
  State<StarredMessages> createState() => _StarredMessagespageState();
}

class _StarredMessagespageState extends State<StarredMessages> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Starred messages',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xff0a131a),
      ),
      backgroundColor: Color(0xff0a131a),
      body: Column(
        children: [
          Divider(color: Colors.white12,),
          Padding(
            padding: const EdgeInsets.only(top: 220),
            child: Center(
              child: CircleAvatar(
                backgroundColor: Color(0xff0a131a),
                radius: 40,
                backgroundImage: AssetImage("assets/WhatsApp Image 2024-11-19 at 18.48.47_ad9f37da.jpg"),
              ),
            ),
          ),
          SizedBox( height: size.height*.07,),
          Center(
              child: Text(
                "Tap and hold on any",
                style: TextStyle(color: Colors.white54, fontSize: 16),
              )),
          Center(
              child: Text(
                "message in any chat to star",
                style: TextStyle(color: Colors.white54, fontSize: 16),
              )),
          Center(
              child: Text(
                "it,so you can easily find it",
                style: TextStyle(color: Colors.white54, fontSize: 16),
              )),
          Center(
              child: Text(
                " later.",
                style: TextStyle(color: Colors.white54, fontSize: 16),
              )),
        ],
      ),
    );
  }
}