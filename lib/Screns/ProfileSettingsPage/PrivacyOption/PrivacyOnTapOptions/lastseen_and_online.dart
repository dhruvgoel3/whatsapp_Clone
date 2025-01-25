import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LastseenAndOnline extends StatelessWidget {
  const LastseenAndOnline({super.key});

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
        title:
            Text("Last seen and online", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Divider(color: Colors.white12),
          Padding(
            padding: const EdgeInsets.only(right: 180.0, top: 12, bottom: 7),
            child: Text(
              "Who can see my last seen",
              style:
                  TextStyle(color: Colors.white54, fontWeight: FontWeight.w600),
            ),
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.circle_outlined,
                  color: Colors.grey,
                )),
            title: Text(
              "Everyone",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.circle,
                  color: Colors.grey,
                )),
            title: Text(
              "My contacts",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.circle,
                  color: Colors.grey,
                )),
            title: Text("My contacts except...",
                style: TextStyle(color: Colors.white)),
          ),
          ListTile(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.radio_button_checked_sharp,
                color: Colors.green,
              ),
            ),
            title: Text("Only share with...",
                style: TextStyle(color: Colors.white)),
          ),
          Divider(color: Colors.white12),
          Padding(
            padding: const EdgeInsets.only(right: 180.0, top: 12, bottom: 7),
            child: Text(
              "Who can see I'm online",
              style:
                  TextStyle(color: Colors.white54, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.circle_outlined,
                  color: Colors.grey,
                )),
            title: Text(
              "Everyone",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.radio_button_checked_sharp,
                color: Colors.green,
              ),
            ),
            title: Text("Same as last seen",
                style: TextStyle(color: Colors.white)),
          ),
          SizedBox(height: 10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "If you don't share when you were ;ast seen or online.",
                style:
                TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
              ),
              Text(
                "tou won't be able to see when other people were last",
                style:
                TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
              ),
              Text(
                "seen or online",
                style:
                TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
              ),
            ],
          )
        ],
      ),
    );
  }
}
