import 'package:flutter/material.dart';
import 'package:whatsapp/Screns/UpdateScreans/create_channel_page.dart';
import 'package:whatsapp/Screns/UpdateScreans/status_privacy_page.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/profile_page.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    var scrwidth = MediaQuery.of(context).size.width;
    var scrheight = MediaQuery.of(context).size.height;
    List<String> whatsappChannelNames = [
      'Study Notion',
      'Telgu Space',
      'My Rising India',
      'French Modules',
      'Shivang Maths Acadmy',
      'Hiten codes',
      'Iner Code',
      'Computer networks',
      'Guidance Hub',
      'Daily Motivation',
      'Gaming Legends',
    ];
    List<String> StatusTittles = [
      'Broo',
      'Vikas',
      'Samarth',
      'Loveraj',
      'Krishn',
    ];

    List<String> whatsappChannelSubtitles = [
      'Do or Die cases.',
      'Telgu Lessons.',
      'Complete Syllabus.',
      'Module no.= 3.',
      'Book R.D sharma.',
      'New reel.',
      'Best Content.',
      'Free Guidance.',
      'Never Give hub.',
      'Daily quotes.',
      'New Match.',
    ];
    List<String> times = [
      '07:00 AM',
      '128:05 AM',
      '07:30 AM',
      '6:00 AM',
      '2:45 PM',
      '12:15 PM',
      '03:30 PM',
      '07:00 PM',
      '05:30 PM',
      '03:00 PM',
      '08:45 PM',
    ];
    List<Image> images = [
      Image.asset('assets/1.jpg'),
      Image.asset('assets/2.jpg'),
      Image.asset('assets/3.jpg'),
      Image.asset('assets/4.jpg'),
      Image.asset('assets/5.jpg'),
      Image.asset('assets/1.jpg'),
      Image.asset('assets/2.jpg'),
      Image.asset('assets/3.jpg'),
      Image.asset('assets/4.jpg'),
      Image.asset('assets/5.jpg'),
      Image.asset('assets/5.jpg'),
    ];
    List<Image> statusImages = [
      Image.asset('assets/dhruv pic.jpg'),
      Image.asset('assets/dhruv image neww one mc d.jpg'),
      Image.asset('assets/dhruv.jpg.jpg'),
      Image.asset('assets/harsh-removebg-preview[1].png'),
      Image.asset('assets/dhruv photo.jpg'),
    ];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(Icons.camera_alt_sharp),
      ),
      backgroundColor: Color(0xFF0B141B),
      appBar: AppBar(
        backgroundColor: Color(0xFF0B141B),
        title: Text(
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 27, color: Colors.white),
            textAlign: TextAlign.left,
            'Updates'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.photo_camera_outlined),
              color: Colors.white),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.search), color: Colors.white),
          PopupMenuButton(
            onSelected: (value) {
              if (value == 'status_privacy') {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const StatusPrivacyPage()));
              } else if (value == 'settings') {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ProfilePage()));
              }
            },
            color: Color(0xff0a131a),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                    value: 'status_privacy',
                    child: Text(
                      "Status privacy",
                      style: TextStyle(color: Colors.white),
                    )),
                PopupMenuItem(
                    onTap: () {
                      _showBottomSheet(context);
                    },
                    value: 'create_channel',
                    child: Text(
                      "Create channel",
                      style: TextStyle(color: Colors.white),
                    )),
                PopupMenuItem(
                    value: 'settings',
                    child: Text(
                      "Settings",
                      style: TextStyle(color: Colors.white),
                    ))
              ];
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15),
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    'Status',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: statusImages.length,
                  itemBuilder: (context, index) => Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2),
                                shape: BoxShape.circle),
                            margin: EdgeInsets.symmetric(horizontal: 7),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: statusImages[index].image,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            StatusTittles[index],
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      )),
            ),
            Divider(
              color: Colors.white12,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Text(
                    'Channels',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: scrwidth * .55,
                  ),
                  Text(
                    'Explore',
                    style: TextStyle(fontSize: 15, color: Colors.green),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.green,
                    size: 15,
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: whatsappChannelNames.length,
                  itemBuilder: (context, index) => ListTile(
                        title: Text(
                          whatsappChannelNames[index],
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Row(
                          children: [
                            Icon(
                              Icons.photo,
                              color: Colors.grey,
                            ),
                            Text(
                              whatsappChannelSubtitles[index],
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        leading: CircleAvatar(
                          backgroundImage: images[index].image,
                          backgroundColor: Colors.white,
                        ),
                        trailing: Text(
                          times[index],
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                      )),
            ),
            SizedBox(height: 13),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                "Find channels to follow",
                style: TextStyle(
                    color: Colors.white54, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 10),
            ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage(
                    "assets/meta_image-removebg-preview.png",
                  ),
                ),
                title: Text(
                  "Meta",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                subtitle: Text(
                  "6.2M followers",
                  style: TextStyle(color: Colors.white54),
                ),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Follow",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                )),
            ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage(
                    "assets/under construction image.jpg",
                  ),
                ),
                title: Text(
                  "Constructions",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                subtitle: Text(
                  "1.1M followers",
                  style: TextStyle(color: Colors.white54),
                ),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Follow",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                )),
            ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage(
                    "assets/2.jpg",
                  ),
                ),
                title: Text(
                  "Neha mam army",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                subtitle: Text(
                  "3.2M followers",
                  style: TextStyle(color: Colors.white54),
                ),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Follow",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                )),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200.0),
              child: Container(
                width: 140,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white54)),
                child: Center(
                    child: Text(
                  "Explore more",
                  style: TextStyle(color: Colors.green),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _showBottomSheet(BuildContext context) {
  var size = MediaQuery.of(context).size;
  showModalBottomSheet(
    backgroundColor: Color(0xff0a131a),
    context: context,
    builder: (context) {
      return Container(height: size.height * .99, child: CreateChannelpage());
    },
  );
}
