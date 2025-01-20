import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/round_button.dart';

class ChangeNumberPage extends StatelessWidget {
  const ChangeNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0a131a),
        appBar: AppBar(
            backgroundColor: Color(0xff0a131a),
            title: Text(
              "Change number",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
            leading: Icon(Icons.arrow_back, color: Colors.white)),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 1),
            child: Image.asset(
              "assets/Screenshot 2025-01-20 233957.png",
              height: 120,
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Changing your phone number will migrate",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  Text(
                    "your account info,groups & settings",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Before proceeding, please confirm that you are",
                      style: TextStyle(color: Colors.grey, fontSize: 14)),
                  Text("able to recieve SMS or calls at your new number",
                      style: TextStyle(color: Colors.grey, fontSize: 14)),
                  SizedBox(height: 15,),
                  Text("If you have both a new phone & a new phone ",
                      style: TextStyle(color: Colors.grey, fontSize: 14)),
                  Text("first change your number on your old phone",
                      style: TextStyle(color: Colors.grey, fontSize: 15)),
                  SizedBox(height: 40,),
                  RoundButton(title: "Next", onTap: (){})
                ]),
          ),
        ]));
  }
}
