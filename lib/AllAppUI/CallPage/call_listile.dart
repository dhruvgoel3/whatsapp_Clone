import 'package:flutter/material.dart';

class CallListile extends StatelessWidget {
  final String image,label,label2;
  final IconData iconData,icon;
  const CallListile(this.image,this.label,this.label2,this.iconData,this.icon);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListTile(
      leading: CircleAvatar(backgroundImage: AssetImage(image),radius: 23),
      title: Text(label,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
        subtitle: Row(
          children: [
            Icon(iconData,size: 15,color: Colors.green,),
            SizedBox(width: size.height*0.02),
            Text(label2,style: TextStyle(fontSize: 15,color: Colors.white54,fontWeight: FontWeight.w500),),
          ],
        ),
        trailing: Icon(icon,size: 27,color: Colors.white,),

    );
  }
}
