import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/ListsOption/ListsOnTapOptions/favourites_page.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/ListsOption/ListsOnTapOptions/group_list_page.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/ListsOption/ListsOnTapOptions/unread_page.dart';
import 'package:whatsapp/Widgets/round_button.dart';
import '../profile_page.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0a131a),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: const Icon(
              Icons.edit,
              color: Colors.white,
              size: 25,
            ),
          )
        ],
        backgroundColor: const Color(0xff0a131a),
        title: const Text(
          "Lists",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
        leading: IconButton(
          onPressed: () {
            // Navigate back using GetX for consistency
            Get.to(() => ProfilePage());
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Image.asset("assets/Screenshot 2025-01-22 214001.png"),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Any list create becomes a filter at the top of",
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const Text(
            "your Chats tab.",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 14),
          ),
          const SizedBox(height: 20),
          RoundButton(title: "Create a custom list", onTap: () {}),
          const SizedBox(height: 10),
          const Divider(color: Colors.white10, thickness: 6),
          const Padding(
            padding: EdgeInsets.only(right: 290.0),
            child: Text(
              "Your lists",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
          ),
          const SizedBox(height: 5),
          ListTile(
            onTap: () => Get.to(() => UnreadPage()),
            title: const Text(
              "Unread",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: const Text(
              "Present",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
            ),
          ),
          ListTile(
            onTap: () => Get.to(() => FavouritesPage()),
            title: const Text(
              "Favourites",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: const Text(
              "Group",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
            ),
          ),
          ListTile(
            onTap: () => Get.to(() => GroupListPage()),
            title: const Text(
              "Groups",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: const Text(
              "Present",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
            ),
          ),
          const Divider(color: Colors.white10, thickness: 1),
          const Padding(
            padding: EdgeInsets.only(right: 240.0),
            child: Text(
              "Available presets",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "If you remove a preset list like unread or Group, it will",
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const Text(
            "become available here",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
