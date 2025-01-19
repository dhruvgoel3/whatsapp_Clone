import 'package:flutter/material.dart';

import '../ChatsScreans/Newgroup_page/newgroup_listveiw.dart';

class FirstListview extends StatelessWidget {
  const FirstListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      body: SingleChildScrollView(
        child: Column(
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
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: CircleAvatar(
                radius: 21,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.person_add_alt_1,
                  color: Colors.black,
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: Icon(Icons.qr_code_outlined,color: Colors.white,),
              ),
              title: Text(
                "New contact",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: CircleAvatar(
                radius: 21,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.people_outline,
                  color: Colors.black,
                ),
              ),
              title: Text(
                "New community",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: CircleAvatar(
                radius: 21,
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.widgets,
                  color: Colors.black,
                ),
              ),
              title: Text(
                "Chat with Ais",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 195,top: 17),
              child: Text("Contacts on WhatsApp",
                  style: TextStyle(
                      color: Colors.white30,
                      fontWeight: FontWeight.w500,
                      fontSize: 15)),
            ),SizedBox(height: 10,),
        
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
