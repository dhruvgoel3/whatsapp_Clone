import 'package:flutter/material.dart';
class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.edit,
              color: Colors.white,
              size: 28,
            ),
          )
        ],
        backgroundColor: Color(0xff0a131a),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Text("Favourites", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: Column(
              children: [
                Divider(
                  thickness: 1.1,
                  color: Colors.white10,
                ),
                Text(
                  "Use the pencil to reorder how your lists appear in the chats",
                  style: TextStyle(
                      color: Colors.white54,
                      fontWeight: FontWeight.w600,
                      fontSize: 13),
                ),
                Text(
                  "tab.",
                  style: TextStyle(
                      color: Colors.white54, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 300.0),
            child: Text(
              "Included",
              style: TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.w600,
                  fontSize: 13),
            ),
          ),
          SizedBox(height: 8,),
          ListTile(
            leading: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.white10,
              child: Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
            title: Text("Unread chats",style: TextStyle(color: Colors.white),),
          ),
          SizedBox(height: 10,),

          ListTile(
            leading: CircleAvatar(
              radius: 23,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.message_outlined,
                color: Colors.black,
              ),
            ),
            title: Text("Unread chats",style: TextStyle(color: Colors.white),),
          ),
          Center(
            child: Column(
              children: [
                Divider(
                  thickness: 1.1,
                  color: Colors.white10,
                ),
                Text(
                  "You can edit favourites here or reorder how they appear on",
                  style: TextStyle(
                      color: Colors.white54,
                      fontWeight: FontWeight.w600,
                      fontSize: 13),
                ),
                Text(
                  "the calls tab",
                  style: TextStyle(
                      color: Colors.white54, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
