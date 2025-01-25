import 'package:flutter/material.dart';

class UnreadPage extends StatelessWidget {
  const UnreadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.delete_outline,
              color: Colors.white,
              size: 28,
            ),
          )
        ],
        backgroundColor: Color(0xff0a131a),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Text("Unread", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: Column(
              children: [
                Divider(
                  thickness: 1.1,
                  color: Colors.white10,
                ),
                Text(
                  "This is automatically updates for you with all chats with",
                  style: TextStyle(
                      color: Colors.white54,
                      fontWeight: FontWeight.w600,
                      fontSize: 13),
                ),
                Text(
                  "unread messages",
                  style: TextStyle(
                      color: Colors.white54, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 300.0),
            child: Text(
              "Included",
              style: TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.w600,
                  fontSize: 13),
            ),
          ),
          SizedBox(height: 8,),
          ListTile(
            leading: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.message_outlined,
                color: Colors.black,
              ),
            ),
            title: Text("Unread chats",style: TextStyle(color: Colors.white),),
          )
        ],
      ),
    );
  }
}
