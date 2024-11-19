import 'package:flutter/material.dart';
import 'package:whatsapp/Screns/ChatsScreans/NewBroadcastPage/broadcast_listile.dart';
import 'package:whatsapp/Screns/ChatsScreans/Newgroup_page/new_group.dart';

class NewBroadcast extends StatefulWidget {
  const NewBroadcast({super.key});

  @override
  State<NewBroadcast> createState() => _NewBroadcastPageState();
}

class _NewBroadcastPageState extends State<NewBroadcast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        backgroundColor: const Color(0xff0a131a),
        title: Column(
          children: [
            Text(
              'New Broadcast',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text(
                '0 out of 233',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 25,
                color: Colors.white,
              )),
        ],
      ),
      body: Column(
        children: [
          Divider(
            color: Colors.white10,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Only contacts with +9034715626 in their address",
            style: TextStyle(color: Colors.white38),
          ),
          Text(
            "book will recieve tour broadcast messages",
            style: TextStyle(color: Colors.white38),
          ),
          SizedBox(
            height: 10,
          ),

          SingleChildScrollView(
            child: Column(
              children: [
                ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Divider(
                      color: Colors.white12,
                    ),
                    BroadcastListile(
                      'assets/images.jpeg',
                      'Aaditya',
                      "Never give up",
                    ),
                    BroadcastListile(
                      'assets/images (1).jpeg',
                      'Himanshu',
                      "Heartless",
                    ),
                    BroadcastListile(
                      'assets/images (2).jpeg',
                      'Sahil',
                      "Nature Lover",
                    ),
                    BroadcastListile(
                      'assets/images (2).jpeg',
                      "Hardik",
                      "It goes on ...",
                    ),
                    BroadcastListile(
                      'assets/images (3).jpeg',
                      "Harshh",
                      "Expectations Always Hurts",
                    ),
                    BroadcastListile(
                      'assets/images (1).jpeg',
                      "Dhruv",
                      "knock knock",
                    ),
                    BroadcastListile(
                      'assets/images (1).png',
                      'Vansh',
                      "Alone",
                    ),
                    BroadcastListile(
                      'assets/images (2).jpeg',
                      "Prakash",
                      "Busy",
                    ),
                    // BroadcastListile(
                    //   'assets/images (3).jpeg',
                    //   "Love",
                    //   "Sleeping~",
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
