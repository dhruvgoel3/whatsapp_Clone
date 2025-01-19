import 'package:flutter/material.dart';

class FirstListview extends StatelessWidget {
  const FirstListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ListTile(
              leading: CircleAvatar(
                radius: 21,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.people_rounded,
                  color: Colors.black,
                ),
              ),
              title: Text(
                "New Group",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ),
          )
        ],
      ),
    );
  }
}
