import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp/AllAppUI/ChatPage/chats.dart';

class SplashScrean extends StatefulWidget {
  const SplashScrean({super.key});

  @override
  State<SplashScrean> createState() => _SplashScreanState();
}

class _SplashScreanState extends State<SplashScrean> {
  @override
  // Here we are using this method to apply duration for a page..
  // Init means initialisation , so when this method
  // initialize then this initial function will be called

  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => ChatPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Color(0xff20272b),
        height: size.height * 1,
        width: size.width * 1,
        child: Padding(
          padding: const EdgeInsets.only(top: 110),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50, left: 30),
                child: Image.asset(
                  "assets/Whatsap symbol.png",
                  alignment: Alignment.center,
                  width: 900,
                  height: 500,
                ),
              ),
              Text(
                "From",
                style: TextStyle(
                    color: Colors.white38,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Color(0xff20272b),
                    backgroundImage: AssetImage(
                      "assets/new_image-removebg-preview.png",
                    ),
                  ),
                  Text(
                    " Meta ",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 22),
                  )
                ],
              ),
              SizedBox(height: 0),
              Padding(
                padding: const EdgeInsets.only(left: 280, top: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Secured by",
                      style: TextStyle(color: Colors.white12),
                    ),
                    Text(
                      "Knox",
                      style: TextStyle(color: Colors.white12),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
