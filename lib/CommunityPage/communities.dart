import 'package:flutter/material.dart';

class Communities extends StatelessWidget {
  const Communities({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(appBar: AppBar(
        title: Text(
          "Communities",
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
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(color: Color(0xff0a131a)),
        ),

      );
  }
}
