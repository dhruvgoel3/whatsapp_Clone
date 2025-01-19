
import 'package:flutter/material.dart';

class Cloning extends StatelessWidget {
  final String image,label,label2,time;
  final IconData iconData,iconData2;
  final CircleAvatar;

  const Cloning(this.image,this.label,this.label2,this.iconData,this.time,this.iconData2,this.CircleAvatar);

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
      trailing: Column(
        children: [
          Text(time,style: TextStyle(color: Colors.green),),
          CircleAvatar(child: Text("1",style: TextStyle(color: Colors.black),),radius: 8,backgroundColor: Colors.green,)
        ],
      )

    );
  }
}
