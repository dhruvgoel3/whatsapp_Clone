import 'package:flutter/material.dart';
import 'package:whatsapp/Screns/ChatsScreans/PaymentsPage/payments_listview.dart';

class TwoTiles extends StatefulWidget {
  const TwoTiles({super.key});

  @override
  State<TwoTiles> createState() => _TwoTilesState();
}

class _TwoTilesState extends State<TwoTiles> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Divider(
          color: Colors.white12,
        ),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(left: 3),
            child: Icon(
              Icons.currency_rupee_outlined,
              color: Colors.green,
              size: 24,
            ),
          ),
          title: Text(
            "Send Payment",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 17),
          ),
        ),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(left: 3),
            child: Icon(
              Icons.qr_code,
              color: Colors.green,
              size: 24,
            ),
          ),
          title: Text(
            "Scan any UPI Qr code",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w400, fontSize: 17),
          ),
        ),
        Divider(
          thickness: 9,
          color: Colors.black,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, left: 15),
          child: Text(
            "Chat with Buisness",
            style: TextStyle(
                color: Colors.green, fontSize: 15, fontWeight: FontWeight.w800),
          ),
        ),
       CloningList(),
      ],
    );

  }
}
