import 'package:flutter/material.dart';

class HelpCentre extends StatefulWidget {
  const HelpCentre({super.key});

  @override
  State<HelpCentre> createState() => _HelpCentreState();
}

class _HelpCentreState extends State<HelpCentre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
      ),
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
          backgroundColor: Color(0xff0a131a),
          title: Text(
            "Storage and updates",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          ),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back, color: Colors.white))),
      body: Column(
        children: [
          Divider(
            thickness: 1,
            color: Colors.white10,
          ),
          Image.asset("assets/Screenshot 2025-01-26 213543.png"),
          Padding(
            padding: const EdgeInsets.only(right: 208.0),
            child: Text(
              "Help topics",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
