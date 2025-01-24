import 'package:flutter/material.dart';

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
    );
  }
}
