import 'package:flutter/material.dart';
import 'package:whatsapp/AllAppUI/ChatPage/chats.dart';
import 'package:whatsapp/Screns/ChatsScreans/PaymentsPage/two_tiles.dart';

class Payments extends StatefulWidget {
  const Payments({super.key});

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0a131a),
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
      body: TwoTiles(),

    );
  }
}
