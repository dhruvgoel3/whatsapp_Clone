import 'package:flutter/material.dart';
class CallsPage extends StatefulWidget {
  const CallsPage({super.key});

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    bool light = true;
    bool light2 = false;
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
        backgroundColor: Color(0xff0a131a),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title:
        Text("Calls", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          ListTile(
            trailing: Switch(
              // This bool value toggles the switch.
              value: light2,
              activeColor: Colors.green,
              onChanged: (bool value) {
                // This is called when the user toggles the switch.
                setState(() {
                  light2 = value;
                });
              },
            ),
            title: Text("Silence unknown callers",style: TextStyle(color: Colors.white),),
            subtitle:  Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "Calls fron unknown numbers will be",
                    style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "silenced. They will still be shown in",
                    style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "the calls tab and in your notifications",
                    style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Learn more",
                    style:
                    TextStyle(color: Colors.lightBlue, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
