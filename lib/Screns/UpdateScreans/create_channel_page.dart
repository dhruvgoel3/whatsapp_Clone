import 'package:flutter/material.dart';

class CreateChannelpage extends StatefulWidget {
  const CreateChannelpage({super.key});

  @override
  State<CreateChannelpage> createState() => _CreateChannelpageState();
}

class _CreateChannelpageState extends State<CreateChannelpage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
      child: Column(
        children: [
          SizedBox(height: 15),
          Image(
            image: AssetImage(
              "assets/WhatsApp Image 2024-11-20 at 00.01.48_47600ffb.jpg",
            ),
            height: size.height * .1,
          ),
          SizedBox(height: 10),
          Center(
              child: Text(
            'Create a channel to reach',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          )),
          Center(
              child: Text(
            'unlimited followers',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          )),
          ListTile(
            leading: Icon(
              Icons.circle_rounded,
              color: Colors.white,
            ),
            title: Text(
              'Anyone can discover your channel',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'Channels are public, so anyone can find them and see 30 days of history',
              style: TextStyle(color: Colors.white54),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.visibility_off_outlined,
              color: Colors.white,
            ),
            title: Text(
              'People see  your channel, not you',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "Followers can't see your phone number,profile picture or name,but other admins can",
              style: TextStyle(color: Colors.white54),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.shield_outlined,
              color: Colors.white,
            ),
            title: Text(
              "You're responsible for your channel",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'Your channel needs to follow our guidelines and is reviewed against them',
              style: TextStyle(color: Colors.white54),
            ),
          )
        ],
      ),
    );
  }
}
