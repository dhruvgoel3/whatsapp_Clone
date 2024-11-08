import 'package:flutter/material.dart';
import 'package:whatsapp/UpdatePage/update_listview.dart';
import 'update_listile.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text(
        "Updates",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
      ),
      backgroundColor: Color(0xff0a131a),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
              size: 25,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 25,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 25,
            ))
      ],
    ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Color(0xff0a131a)),

        // child: Padding(
        //   padding: const EdgeInsets.only(top: 25,left: 18),
        //   child: Text("Status",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
        // ),
        child: Expanded(child: UpdateListview()),
      ),
    );
    
  }
}
