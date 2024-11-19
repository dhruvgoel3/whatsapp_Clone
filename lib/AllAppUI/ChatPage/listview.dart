import 'package:flutter/material.dart';
import 'package:whatsapp/AllAppUI/ChatPage/Listile.dart';
class CloningList extends StatefulWidget {
  const CloningList({super.key});

  @override
  State<CloningList> createState() => _CloningListState();
}

class _CloningListState extends State<CloningList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Cloning("assets/dhruv image neww one mc d.jpg", "Me (You)", "Collage work done !!", Icons.check, "05/11/24"),
        Cloning("assets/images (1).jpeg", "Papa ji", "Photo", Icons.check, "1:02 am"),
        Cloning("assets/images (2).png", "Big Brother", "Photo", Icons.check, "12:46 pm"),
        Cloning("assets/images (4).jpeg", "Loveraj", "Photo", Icons.check, "Today"),
        Cloning("assets/images (3).jpeg", "raghav", "Photo", Icons.check, "Yesterday"),
        Cloning("assets/dhruv pic.jpg", "raghav", "Photo", Icons.check, "5:30 pm"),
        Cloning("assets/dhruv image neww one mc d.jpg", "Priya Mitra", "Photoi", Icons.check, "Yesterday"),
        Cloning("assets/images.png", "App mentoring", "Photo", Icons.check, "3:40 am"),
        Cloning("assets/demo-image2.png", "Parul", "Photo", Icons.check, "Yesterday"),
        Cloning("assets/doctor.png", "Papa Ki pari", "Photo", Icons.check, "Today"),
        Cloning("assets/dhruv image neww one mc d.jpg", "Krish", "Photo", Icons.check, "5:20 pm"),
      ],

    );
  }
}
