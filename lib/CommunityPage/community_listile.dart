import 'package:flutter/material.dart';
class CommunitiesPage extends StatelessWidget {
  const CommunitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var scrwidth=MediaQuery.of(context).size.width;
    var scrheight=MediaQuery.of(context).size.height;
    List<String> whatsappChannelNames = [
      'Tech Trends Chat','Fitness Gurus', 'Travel Enthusiasts',];
    List<String> community1 =['Announcements','App Mentoring', 'General',];
    List<String> community1Subtitles = ['There will be meeting at 9', 'Give progress', 'Kaise ho sab',];

    List<String> whatsappChannelSubtitles = ['Tech updates.', 'Fitness tips.', 'Travel stories.', 'Yummy recipes.',];
    List<String> times = [ '08:00 AM','08:05 AM', '09:30 AM', '11:00 AM', '12:45 PM', '02:15 PM', '03:30 PM', '05:00 PM', '06:30 PM', '08:00 PM', '09:45 PM',];
    List<Image>  images=[Image.asset('assets/techtrends.jpg'),Image.asset('assets/fitness.jpg'),Image.asset('assets/travel.jpg'),];
    return Scaffold(
      backgroundColor: Color(0xFF0B141B),
      appBar:AppBar(
        backgroundColor: Color(0xFF0B141B),
        title: Text(style:TextStyle(
            fontWeight: FontWeight.bold,
            fontSize:30,
            color: Colors.white
        ),textAlign: TextAlign.left,'Communities'),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.qr_code_scanner),color: Colors.white),
          IconButton(onPressed: (){}, icon: Icon(Icons.photo_camera_outlined),color: Colors.white),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),color: Colors.white)
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
                    margin: EdgeInsets.only(left: 15,top: 15),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                        shape: BoxShape.rectangle
                    ),
                    child: Icon(Icons.group),
                  ),
                  Container(margin: EdgeInsets.only(left: 15,top: 20),
                    alignment: Alignment.centerLeft,
                    child: Text('New Community',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white
                      ),),
                  ),
                ],
              ),
            ),
            Container(height: 10,decoration: BoxDecoration(color: Colors.black),),
            Container(
              margin: EdgeInsets.only(left: 15,top: 20),
              child: Row(
                children: [
                  CircleAvatar(radius: 27,
                    backgroundImage: AssetImage('assets/gdgicon.jpg'),
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 15,top: 5),
                      child: Text('GDG Volunteers 2024',style: TextStyle(
                          color: Colors.white,
                          fontSize: 18

                      ),))
                ],
              ),
            ),
            Container(margin: EdgeInsets.only(top: 5),
              height: 0.3,decoration: BoxDecoration(color: Colors.grey),),
            SizedBox(
              child: ListView.builder(shrinkWrap: true,
                  itemCount: community1.length,
                  itemBuilder: (context,index)=>ListTile(title: Text(community1[index],style: TextStyle(color: Colors.white),),
                    leading: CircleAvatar(
                      backgroundImage: images[index].image,
                    ),
                    trailing: Text(times[index],style: TextStyle(color: Colors.grey),),
                    subtitle: Text(community1Subtitles[index],style: TextStyle(color: Colors.grey),),)),
            ),
            Container(
              margin: EdgeInsets.only(left: 15,top: 20),
              height: 50,

              child: Row(
                children: [
                  Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,),
                  Container(margin: EdgeInsets.only(left: 30),

                      child: Text('View all',style: TextStyle(color: Colors.grey),))
                ],
              ),
            ),
            Container(height: 10,decoration: BoxDecoration(color: Colors.black),),
            Container(
              margin: EdgeInsets.only(left: 15,top: 20),
              child: Row(
                children: [
                  CircleAvatar(radius: 27,
                    backgroundImage: AssetImage('assets/gaming.jpg'),
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 15,top: 5),
                      child: Text('Extracurricular',style: TextStyle(
                          color: Colors.white,
                          fontSize: 18

                      ),))
                ],
              ),
            ),
            Container(margin: EdgeInsets.only(top: 5),
              height: 0.3,decoration: BoxDecoration(color: Colors.grey),),
            SizedBox(
              child: ListView.builder(shrinkWrap: true,
                  itemCount: whatsappChannelNames.length,
                  itemBuilder: (context,index)=>ListTile(title: Text(whatsappChannelNames[index],style: TextStyle(color: Colors.white),),
                    leading: CircleAvatar(
                      backgroundImage: images[index].image,
                    ),
                    trailing: Text(times[index],style: TextStyle(color: Colors.grey),),
                    subtitle: Text(whatsappChannelSubtitles[index],style: TextStyle(color: Colors.grey),),)),
            ),
            Container(
              margin: EdgeInsets.only(left: 15,top: 20),
              height: 50,

              child: Row(
                children: [
                  Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,),
                  Container(margin: EdgeInsets.only(left: 30),

                      child: Text('View all',style: TextStyle(color: Colors.grey),))
                ],
              ),
            ),
            Container(height: 10,decoration: BoxDecoration(color: Colors.black),),
          ],
        ),
      ),
    );
  }
}