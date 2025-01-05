import 'package:flutter/cupertino.dart';
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
      body: Column(
        children: [
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
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 17),
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
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 17),
            ),
          ),
          Divider(
            thickness: 9,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, right: 210),
            child: Text(
              "Chat with Buisness",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 15,
                  fontWeight: FontWeight.w800),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/5.jpg"),
                    ),
                    Text(
                      "Mumbai",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Indians",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/5.jpg"),
                    ),
                    Text(
                      "PM modi",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/5.jpg"),
                    ),
                    Text(
                      "Chennai",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "kings",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/5.jpg"),
                    ),
                    Text(
                      "Nagpur",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Metro",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/5.jpg"),
                    ),
                    Text(
                      "RCB",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            thickness: 10,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, right: 225),
            child: Text(
              "Payment methods",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 15,
                  fontWeight: FontWeight.w800),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 78,
            width: 360,
            decoration: BoxDecoration(
                color: Colors.white10, borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 6, bottom: 25),
                  child: Icon(
                    CupertinoIcons.lock_shield,
                    color: Colors.green,
                    size: 33,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, right: 23),
                        child: Text(
                          "To protect your security , Whatsap does",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Text(
                          "not secure your UPI PIN or full bank account",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 235),
                        child: Text(
                          "number",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 13.0),
                child: Icon(
                  Icons.add_circle_outline,
                  color: Colors.grey,
                  size: 26,
                ),
              ),
              SizedBox(
                width: 23,
              ),
              Text("Add payment Method",
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              SizedBox(
                height: 6,
              ),
            ],
          ),
          Divider(
            thickness: 10,
            color: Colors.black,
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 13.0),
                child: Icon(
                  Icons.help,
                  color: Colors.grey,
                  size: 26,
                ),
              ),
              SizedBox(
                width: 23,
              ),
              Text("Help", style: TextStyle(color: Colors.white, fontSize: 16)),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Divider(
            thickness: 10,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 13.0),
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                    size: 26,
                  ),
                ),
                SizedBox(
                  width: 23,
                ),
                Text("Remove payments imformation", style: TextStyle(color: Colors.grey, fontSize: 16)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
