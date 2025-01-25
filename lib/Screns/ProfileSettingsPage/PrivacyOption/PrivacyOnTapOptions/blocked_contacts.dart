import 'package:flutter/material.dart';
class BlockedContacts extends StatelessWidget {
  const BlockedContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.person_add_alt,color: Colors.white,size: 28,),
          )
        ],
        backgroundColor: Color(0xff0a131a),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title:
        Text("Blocked contacts", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 290.0, top: 12, bottom: 7),
            child: Text(
              "Contacts",
              style:
              TextStyle(color: Colors.white54, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: CircleAvatar(radius: 24,backgroundImage: AssetImage("assets/images (4).jpeg"),),
            title: Text("+91 8944758309",style: TextStyle(color: Colors.white,fontSize: 18),),
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: CircleAvatar(radius: 24,backgroundImage: AssetImage("assets/images (2).jpeg"),),
            title: Text("+91 8946709636",style: TextStyle(color: Colors.white,fontSize: 18),),

          ),
          SizedBox(height: 10,),

          ListTile(
            leading: CircleAvatar(radius: 24,backgroundImage: AssetImage("assets/images (2).png"),),
            title: Text("+91 7803698085",style: TextStyle(color: Colors.white,fontSize: 18),),

          )
        ],
      ),
    );
  }
}
