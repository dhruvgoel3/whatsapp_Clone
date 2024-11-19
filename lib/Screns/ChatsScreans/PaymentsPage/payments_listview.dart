import 'package:flutter/material.dart';
import 'package:whatsapp/AllAppUI/ChatPage/Listile.dart';



import 'package:flutter/material.dart';

class Cloning extends StatelessWidget {
  final String image,label,label2,time;
  final IconData iconData;

  const Cloning(this.image,this.label,this.label2,this.iconData,this.time);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListTile(
      leading: CircleAvatar(backgroundImage: AssetImage(image),radius: 25,),
      title: Text(label,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
      subtitle: Row(
        children: [
          Icon(iconData,size: 22,color: Colors.lightBlueAccent),
          SizedBox(width: size.width*.02),
          Text(label2,style: TextStyle(fontSize: 15,color: Colors.white54),)
        ],
      ),
      trailing: Text(time,style: TextStyle(fontSize: 13,color: Colors.white38),),

    );
  }
}

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

      ],

    );
  }
}
