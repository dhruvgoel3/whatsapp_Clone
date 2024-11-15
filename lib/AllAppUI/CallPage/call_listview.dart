import 'package:flutter/material.dart';
import 'package:whatsapp/AllAppUI/CallPage/call_listile.dart';
class CallListview extends StatefulWidget {
   CallListview({super.key});

  @override
  State<CallListview> createState() => _CallListviewState();
}

class _CallListviewState extends State<CallListview> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CallListile("assets/dhruv image neww one mc d.jpg", "Team Hommies", "Today,8:05 am", Icons.call_received, Icons.videocam_outlined),
        CallListile("assets/dhruv image neww one mc d.jpg", "Aayush Canada", "Yesterday,9:18 pm", Icons.call_made, Icons.call),
        CallListile("assets/dhruv image neww one mc d.jpg", "Mannat USA", "5 November, 8:00 am", Icons.call_received, Icons.videocam_outlined),
        CallListile("assets/dhruv image neww one mc d.jpg", "Prachi Dii", "3 November, 3:24 am", Icons.call_received, Icons.call),
        CallListile("assets/dhruv image neww one mc d.jpg", "Team Crew", "1 November, 2:56 am", Icons.call_received, Icons.videocam_outlined),
        CallListile("assets/dhruv image neww one mc d.jpg", "Vicky", "28 October, 1:35 am", Icons.call_received, Icons.videocam_outlined),
        CallListile("assets/dhruv image neww one mc d.jpg", "kuber", "26 October, 6:30 am", Icons.call_received, Icons.call),
        CallListile("assets/dhruv image neww one mc d.jpg", "We are 22-22", "5 October, 8:00 pm", Icons.call_received, Icons.videocam_outlined),
        CallListile("assets/dhruv image neww one mc d.jpg", "Trip Plans", "29 September, 6:56 pm", Icons.call_received, Icons.call),
        CallListile("assets/dhruv image neww one mc d.jpg", "Trip Dehli", "28 September, 4:50 pm", Icons.call_received, Icons.call),
        CallListile("assets/dhruv image neww one mc d.jpg", "Aakash Australia", "21 September, 12:50 pm", Icons.call_received, Icons.videocam_outlined),
        CallListile("assets/dhruv image neww one mc d.jpg", "Raghav England", "10 September, 7:50 pm", Icons.call_received, Icons.call),
      ],
    );
  }
}
