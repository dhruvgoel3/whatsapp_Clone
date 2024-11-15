import 'package:flutter/material.dart';

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
    List<Image> statusImages = [
      Image.asset('assets/dhruv pic.jpg'),
      Image.asset('assets/dhruv image neww one mc d.jpg'),
      Image.asset('assets/demo-image2.png'),
      Image.asset('assets/doctor.png'),
      Image.asset('assets/dhruv photo.jpg'),

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
