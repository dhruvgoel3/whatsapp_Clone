import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/round_button.dart';

class TransferChatsPage extends StatelessWidget {
  const TransferChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
        backgroundColor: Color(0xff0a131a),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          Center(child: Image.asset("assets/Screenshot 2025-01-26 101344.png")),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Column(
              children: [
                Text(
                  "Transfer chat history to",
                  style: TextStyle(
                      letterSpacing: 1,
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Android phone",
                  style: TextStyle(
                      letterSpacing: 1,
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Transfer your chat history privately and have your",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                Text("most up-to-date messages without using Google",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400)),
                Text("storage.Certain device permissions are needed to",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400)),
                Text("connect to your new device.",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400)),
                SizedBox(height: 280,),

                RoundButton(title: 'Start', onTap: () {})
              ],
            ),
          )
        ],
      ),
    );
  }
}
