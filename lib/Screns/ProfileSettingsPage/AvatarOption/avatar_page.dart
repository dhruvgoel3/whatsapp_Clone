import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/round_button.dart';

import '../profile_page.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
          backgroundColor: Color(0xff0a131a),
          title: Text(
            "Avatar",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    (MaterialPageRoute(builder: (context) => ProfilePage())));
              },
              icon: Icon(Icons.arrow_back, color: Colors.white))),
      body: Column(
        children: [
          Center(child: Image.asset("assets/Screenshot 2025-01-22 213933.png")),
          SizedBox(height: 12),
          Text("Say more with Avatars now on Whatsapp",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
          SizedBox(height: 12),
          RoundButton(title: "Create your own Avatar", onTap: (){}),
          Padding(
            padding: const EdgeInsets.only(right: 230,top: 40),
            child: Text("Learn more",style: TextStyle(color: Colors.lightBlue,fontSize: 16),),
          )
        ],
      ),
    );
  }
}
