import 'package:flutter/material.dart';
class ChannelReports extends StatefulWidget {
  const ChannelReports({super.key});

  @override
  State<ChannelReports> createState() => _ChannelReportsState();
}

class _ChannelReportsState extends State<ChannelReports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
          backgroundColor: Color(0xff0a131a),
          title: Text(
            "Channel reports",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          ),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back, color: Colors.white))),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 60.0,left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("No reports",style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.w500),),
            Text("If you report a channel, you can see your report and ",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),
            Text("the outcome here.",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),),
          ],
        ),
      ),
    );
  }
}
