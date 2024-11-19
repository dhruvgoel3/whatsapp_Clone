import 'package:flutter/material.dart';
import 'package:whatsapp/Screns/ChatsScreans/Newgroup_page/newgroup_listveiw.dart';

class NewGroup extends StatefulWidget {
  const NewGroup({super.key});

  @override
  State<NewGroup> createState() => _NewGroupState();
}

class _NewGroupState extends State<NewGroup> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xff0a131a),
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          backgroundColor: Color(0xff0a131a),
          title: Text(
            "New Group",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            Divider(
              color: Colors.white12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              child: Text("Frequently contacted",
                  style: TextStyle(
                      color: Colors.white30,
                      fontWeight: FontWeight.w500,
                      fontSize: 15)),
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
            SizedBox(
              height: size.height * .001,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text("Contacts on WhatsApp",
                  style: TextStyle(
                      color: Colors.white30,
                      fontWeight: FontWeight.w500,
                      fontSize: 15)),
            ),
            SizedBox(
              height: size.height * .001,
            ),
            ContactListtile(
              'assets/images (2).jpeg',
              "Hardik",
              "It goes on ...",
            ),
            ContactListtile(
              'assets/images (3).jpeg',
              "Harshh",
              "Expectations Always Hurts",
            ),
            ContactListtile(
              'assets/images (1).jpeg',
              "Dhruv",
              "knock knock",
            ),
            ContactListtile(
              'assets/images (1).png',
              'Vansh',
              "Alone",
            ),
            ContactListtile(
              'assets/images (2).jpeg',
              "Prakash",
              "Busy",
            ),
            ContactListtile(
              'assets/images (3).jpeg',
              "Love",
              "Sleeping~",
            ),
          ],
        ));
  }
}
