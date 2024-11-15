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
      title: Text(label,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800,color: Colors.white),),
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
