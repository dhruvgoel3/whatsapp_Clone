import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/profile_page.dart';

class Communities extends StatelessWidget {
  const Communities({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    List<String> community1 = [
      'App mentoring',
      'Gen AI 2024',
      'General',
    ];
    List<String> community1Subtitles = [
      'Come to room 145 all 1st year',
      'Meet at 10 am',
      'Never Give Up',
    ];
    List<Image> images = [
      Image.asset('assets/google.webp'),
      Image.asset('assets/images.png'),
      Image.asset('assets/under construction image.jpg'),
    ];
    List<Image> images2 = [
      Image.asset('assets/demo-image2.png'),
      Image.asset('assets/dhruv goel resume.png'),
      Image.asset('assets/whatsap image.png'),
    ];
    List<Image> image2 = [
      Image.asset('assets/dhruv goel resume.png'),
    ];

    List<String> times = [
      '08:00 AM',
      '08:05 AM',
      '09:30 AM',
      '11:00 AM',
      '12:45 PM',
      '02:15 PM',
      '03:30 PM',
      '05:00 PM',
      '06:30 PM',
      '08:00 PM',
      '09:45 PM',
    ];
    List<String> whatsappChannelSubtitles = [
      'Heart Patients.',
      'Hospital Updates.',
      'All reports.',
      'Yummy recipes.',
    ];
    List<String> whatsappChannelNames = [
      'Patient Studio',
      'All the update Information',
      'Hospital Staff',
    ];

    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
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
          PopupMenuButton(
            onSelected: (value) {
              if (value == 'settings') {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              }
            },
            color: Color(0xff0a131a),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                    value: 'settings',
                    child: Text(
                      "Settings",
                      style: TextStyle(color: Colors.white),
                    ))
              ];
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 15),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                        shape: BoxShape.rectangle),
                    child: Icon(Icons.group),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'New Community',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Divider(thickness: 10, color: Colors.black),
            ListTile(
              leading: Container(
                height: 47,
                width: 47,
                child: Image.asset(
                  "assets/images.png",
                  fit: BoxFit.cover,
                  height: 47,
                  width: 47,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.black),
              ),
              title: Text(
                "GDG-Volunteers 2024",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Divider(
              color: Colors.white12,
            ),
            ListTile(
              leading: Container(
                height: 43,
                width: 43,
                child: Icon(
                  CupertinoIcons.volume_up,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff1A3A2D)),
              ),
              title: Text(
                "Announcements",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                "~ Bajrang Gour:1st year join",
                style: TextStyle(color: Colors.white54),
              ),
              trailing: Text(
                "13/11/24",
                style: TextStyle(color: Colors.white54),
              ),
            ),
            SizedBox(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: community1.length,
                  itemBuilder: (context, index) => ListTile(
                        title: Text(
                          community1[index],
                          style: TextStyle(color: Colors.white),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: images[index].image,
                        ),
                        trailing: Text(
                          times[index],
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        subtitle: Text(
                          community1Subtitles[index],
                          style: TextStyle(color: Colors.grey),
                        ),
                      )),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, top: 0),
              height: 50,
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        'View all',
                        style: TextStyle(color: Colors.grey),
                      ))
                ],
              ),
            ),
            Divider(thickness: 10, color: Colors.black),
            ListTile(
              leading: Container(
                height: 47,
                width: 47,
                child: Image.asset(
                  "assets/5.jpg",
                  fit: BoxFit.cover,
                  height: 47,
                  width: 47,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.black),
              ),
              title: Text(
                "TechXNinjas 2",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
        SizedBox(height: 6),
        Divider(color: Colors.white12,),
            SizedBox(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: whatsappChannelNames.length,
                  itemBuilder: (context, index) => ListTile(
                        title: Text(
                          whatsappChannelNames[index],
                          style: TextStyle(color: Colors.white),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: images2[index].image,
                        ),
                        trailing: Text(
                          times[index],
                          style: TextStyle(color: Colors.grey),
                        ),
                        subtitle: Text(
                          whatsappChannelSubtitles[index],
                          style: TextStyle(color: Colors.grey),
                        ),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
