import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp/AllAppUI/ChatPage/chats.dart';
import 'package:whatsapp/bottombar.dart';

class SplashScrean extends StatefulWidget {
  const SplashScrean({super.key});

  @override
  State<SplashScrean> createState() => _SplashScreanState();
}

class _SplashScreanState extends State<SplashScrean> {
  @override


  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => BottomBar()));
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      body: Container(
        color: Color(0xff0a131a),
        height: size.height * 1,
        width: size.width * 1,
        child: Padding(
          padding: const EdgeInsets.only(top: 110),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50, right: 10),
                child: Image.asset(
                  "assets/whatsap image.png",
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
                  Image(
                    image: AssetImage(
                      "assets/meta_image-removebg-preview.png",
                    ),
                    height: size.height * .02,
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
