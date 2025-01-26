import 'package:flutter/material.dart';

import '../../../ChatsScreans/Newgroup_page/newgroup_listveiw.dart';

class ExportChat extends StatefulWidget {
  const ExportChat({super.key});

  @override
  State<ExportChat> createState() => _ExportChatState();
}

class _ExportChatState extends State<ExportChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff0a131a),
        title: Text(
          "Choose chats",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search_rounded,
              color: Colors.white,
            ),
          )
        ],
      ),
      backgroundColor: Color(0xff0a131a),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 195, top: 17),
              child: Text("Frequently contacted",
                  style: TextStyle(
                      color: Colors.white30,
                      fontWeight: FontWeight.w500,
                      fontSize: 15)),
            ),
            SizedBox(
              height: 10,
            ),
            ContactListtile(
              'assets/images.jpeg',
              'Aaditya',
              "Never give up",
            ),
            ContactListtile(
              'assets/images (1).jpeg',
              'Himanshu',
              "Heartless",
            ),
            ContactListtile(
              'assets/images (2).jpeg',
              'Sahil',
              "Nature Lover",
            ),
            ContactListtile(
              'assets/images (2).jpeg',
              'Aakash',
              "Nature Lover",
            ),
            ContactListtile(
              'assets/images (1).jpeg',
              'Raghav',
              "Heartless",
            ),
            ContactListtile(
              'assets/images.jpeg',
              'Aaditya',
              "Never give up",
            ),
          ],
        ),
      ),
    );
  }
}
