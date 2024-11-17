import 'package:flutter/material.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/profile_page.dart';

class Communities extends StatelessWidget {
  const Communities({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    List<String> community1 = [
      'Announcements',
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
      Image.asset('assets/google.webp'),
      Image.asset('assets/google.webp'),
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
              if(value == 'settings') {
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
            Divider(thickness: 10, color: Colors.black),
            Container(
              margin: EdgeInsets.only(left: 15, top: 15),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 27,
                    backgroundImage: AssetImage('assets/google.webp'),
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 15, top: 5),
                      child: Text(
                        'GDG Volunteers 2024',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 0.3,
              decoration: BoxDecoration(color: Colors.grey),
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
            Container(
              margin: EdgeInsets.only(left: 15, top: 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 27,
                    backgroundImage: AssetImage('assets/doctor.png'),
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 15, top: 5),
                      child: Text(
                        'Fortis Community',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 0.3,
              decoration: BoxDecoration(color: Colors.grey),
            ),
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
                          backgroundImage: images[index].image,
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
