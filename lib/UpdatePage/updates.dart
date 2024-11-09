import 'package:flutter/material.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    var scrwidth = MediaQuery.of(context).size.width;
    var scrheight = MediaQuery.of(context).size.height;
    List<String> whatsappChannelNames = [
      'Tech Trends Chat',
      'Fitness Gurus',
      'Travel Enthusiasts',
      'Cooking Secrets',
      'Book Lovers Club',
      'Startup Discussions',
      'Music Mania',
      'Parenting Tips',
      'Photography Hub',
      'Daily Motivation',
      'Gaming Legends',
    ];
    List<String> whatsappChannelSubtitles = [
      'Tech updates.',
      'Fitness tips.',
      'Travel stories.',
      'Yummy recipes.',
      'Book chats.',
      'Startup talk.',
      'Music picks.',
      'Parenting tips.',
      'Photo skills.',
      'Daily quotes.',
      'Gaming news.',
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
    List<Image> images = [
      Image.asset('assets/google.webp'),
      Image.asset('assets/google.webp'),
      Image.asset('assets/google.webp'),
      Image.asset('assets/google.webp'),
      Image.asset('assets/google.webp'),
      Image.asset('assets/google.webp'),
      Image.asset('assets/google.webp'),
      Image.asset('assets/google.webp'),
      Image.asset('assets/google.webp'),
      Image.asset('assets/google.webp'),
      Image.asset('assets/google.webp'),
    ];
    return Scaffold(
      backgroundColor: Color(0xFF0B141B),
      appBar: AppBar(
        backgroundColor: Color(0xFF0B141B),
        title: Text(
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
            textAlign: TextAlign.left,
            'Updates'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.photo_camera_outlined),
              color: Colors.white),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.search), color: Colors.white),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
              color: Colors.white)
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
                child: Text(
                  'Status',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 130,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green, width: 2),
                            shape: BoxShape.circle),
                        margin: EdgeInsets.symmetric(horizontal: 7),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: images[index].image,
                        ),
                      )),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Text(
                    'Channels',
                    style: TextStyle(fontSize: 20, color: Colors.white),
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
            )
          ],
        ),
      ),
    );
  }
}
