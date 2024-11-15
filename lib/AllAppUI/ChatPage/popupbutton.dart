import 'package:flutter/material.dart';
import 'package:whatsapp/Screns/ChatsScreans/linked_devices.dart';
import 'package:whatsapp/Screns/ChatsScreans/new_broadcast.dart';
import 'package:whatsapp/Screns/ChatsScreans/new_group.dart';
import 'package:whatsapp/Screns/ChatsScreans/payments.dart';
import 'package:whatsapp/Screns/ChatsScreans/starred_messages.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/profile_page.dart';
class Popmenubuttonpage extends StatefulWidget {
  const Popmenubuttonpage({super.key});

  @override
  State<Popmenubuttonpage> createState() => _PopmenubuttonpageState();
}

class _PopmenubuttonpageState extends State<Popmenubuttonpage> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        color: const Color(0xff0a131a),
        onSelected: (value) {
          if ( value == 'new_group'){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const  NewGroup()));
          }
          else if ( value == 'new_broadcast'){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NewBroadcast()));
          }else if ( value == 'linked_devices'){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LinkedDevices()));
          }else if ( value == 'starred_messages'){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const StarredMessages()));
          }else if ( value == 'payments'){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Payments()));
          }else if ( value == 'settings'){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePage()));
          }
        },
        itemBuilder: (BuildContext context) {
          return [
            const PopupMenuItem(
                value: 'new_group',
                child: Text(
                  "New group",
                  style: TextStyle(color: Colors.white),
                )),
            const PopupMenuItem(
                value: 'new_broadcast',
                child: Text(
                  "New broadcast",
                  style: TextStyle(color: Colors.white),
                )),
            const PopupMenuItem(
                value: 'linked_devices',
                child: Text(
                  "Linked devices",
                  style: TextStyle(color: Colors.white),
                )),
            const PopupMenuItem(
                value: 'starred_messages',
                child: Text(
                  "Starred messages",
                  style: TextStyle(color: Colors.white),
                )),
            const PopupMenuItem(
                value: 'payments',
                child: Text(
                  "Payments",
                  style: TextStyle(color: Colors.white),
                )),
            const PopupMenuItem(
                value: 'settings',
                child: Text(
                  "Settings",
                  style: TextStyle(color: Colors.white),
                )),
          ];
        });
  }
}