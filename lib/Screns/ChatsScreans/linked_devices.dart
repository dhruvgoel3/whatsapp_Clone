import 'package:flutter/material.dart';
import 'package:whatsapp/AllAppUI/ChatPage/chats.dart';

class LinkedDevices extends StatefulWidget {
  const LinkedDevices({super.key});

  @override
  State<LinkedDevices> createState() => _LinkedDevicesState();
}

class _LinkedDevicesState extends State<LinkedDevices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
        backgroundColor: const Color(0xff0a131a),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .pop(MaterialPageRoute(builder: (context) => ChatPage()));
            },
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            )),
        title: Text(
          "Payments",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 23),
        ),
      ),
      body: Column(
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 35, right: 5),
            child: Image.asset(
              "assets/WhatsApp Image 2025-01-05 at 22.35.37_557f389e.jpg",
              height: 160,
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 15),
            child: Text(
              "You can link other devices to this account",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(height: 3),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              "Learn more",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          SizedBox(height: 25),
          Container(
            width: 360,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Text(
                "Link a device",
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,),
              ),
            ),
          ),
          SizedBox(height: 15),
          Divider(thickness: 8,color: Colors.white10,),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 270),
            child: Text("Device Status",style: TextStyle(color: Colors.grey,fontSize: 13),),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(right: 210),
            child: Text("Tap a device to log out",style: TextStyle(color: Colors.grey,fontSize: 14),),
          ),
          SizedBox(height: 5),
          ListTile(
            leading: Icon(Icons.grid_view_rounded,color: Colors.green,size: 35,),
            title: Text("Windows",style: TextStyle(color: Colors.white,fontSize: 16.5,fontWeight: FontWeight.w500),),
            subtitle: Text("Last active 30/12/24, 9.43 pm",style: TextStyle(color: Colors.grey,fontSize: 13.5,fontWeight: FontWeight.w500),),

          ),
          Divider(thickness: 10,color: Colors.black,),
          Text("Your personal messages are end-to-end encripted",style: TextStyle(color: Colors.grey,fontSize: 13)),
          Text("on all your devices",style: TextStyle(color: Colors.grey,fontSize: 13)),
        ],
      ),
    );
  }
}
// Finally done
