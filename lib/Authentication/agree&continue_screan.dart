import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/Authentication/enter_phone_number.dart';
import 'package:whatsapp/Widgets/round_button.dart';

class AgreeAndContinue extends StatefulWidget {
  const AgreeAndContinue({super.key});

  @override
  State<AgreeAndContinue> createState() => _AgreeAndContinueState();
}

class _AgreeAndContinueState extends State<AgreeAndContinue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 130.0),
            child: Image.asset(
              "assets/Screenshot 2025-01-12 112553.png",
            ),
          ),
          Text(
            "Welcome to WhatsApp",
            style: TextStyle(
                color: Colors.white, fontSize: 26, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
                children: [
              Row(
                children: [
                  Text(
                    "Read our ",
                    style: TextStyle(
                        color: Colors.white38, fontWeight: FontWeight.w500),
                  ),
                  Text(" Privacy Policy. ",
                      style: TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.w500)),
                  Text(
                    "'Tap 'Agree and continue' to'",
                    style: TextStyle(
                        color: Colors.white38, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70.0),
                child: Row(
                  children: [
                    Text(
                      "accept the ",
                      style: TextStyle(
                          color: Colors.white38, fontWeight: FontWeight.w500),
                    ),
                    Text("Terms of Service",
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
                  SizedBox(height: 30,)
            ]
            ),

          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Icon(
                CupertinoIcons.globe,
                color: Colors.green,
                size: 25,
              ),
              SizedBox(width: 13),
              Text(
                "English",
                style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.5),
              ),
              SizedBox(width: 13),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.green,
                size: 27,
              ),

            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: RoundButton(
              title: 'Agree and Continue',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>EnterPhoneNumber()));
              },
            ),
          )
        ],
      ),
    );
  }
}
