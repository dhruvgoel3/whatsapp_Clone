import 'package:flutter/material.dart';
import 'package:whatsapp/utils/switch.dart';
class AdvancedPage extends StatelessWidget {
  const AdvancedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
          backgroundColor: Color(0xff0a131a),
          title: Text(
            "Advanced",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          ),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back, color: Colors.white))),
      body: Column(
        children: [
          ListTile(
            title: Text("Block unknown account messages",style: TextStyle(color: Colors.white),),
            trailing: Utils().getSwitch(),
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("To protect your account and improve ",
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
                Text("device performence,Whatsapp will back",
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
                Text("messages from unknown accounts",
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
                Text("if they exceed a cirtain volume.",
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
                Text("Learn more",
                    style: TextStyle(color: Colors.lightBlue, fontSize: 13)),
              ],
            ),
          ),
          SizedBox(height: 15,),
          ListTile(
            title: Text("Protect Ip address in calls",style: TextStyle(color: Colors.white),),
            trailing: Utils().getSwitch(),
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("To make it harder for people to infer ",
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
                Text("your location,calls on this device will",
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
                Text("be securly replayed through whatsApp",
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
                Text("servers. This will reduce call quality.",
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
                Text("Learn more",
                    style: TextStyle(color: Colors.lightBlue, fontSize: 13)),
              ],
            ),
          ),
          SizedBox(height: 15,),
          ListTile(
            title: Text("Disable link previews",style: TextStyle(color: Colors.white),),
            trailing: Utils().getSwitch(),
            subtitle: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("To help protect your IP address from",
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
                Text("being inferred by third-party websites,",
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
                Text("previews for the links you share in chats",
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
                Text("will no longer be generated.",
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
                Text("Learn more",
                    style: TextStyle(color: Colors.lightBlue, fontSize: 13)),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
