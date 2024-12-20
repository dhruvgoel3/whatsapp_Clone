import 'package:flutter/material.dart';

class BroadcastListile extends StatelessWidget {
  final String image, label, label2;
  const BroadcastListile(
      this.image,
      this.label,
      this.label2,
      );
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
        radius: 23,
      ),
      title: Text(
        label,
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
      ),
      subtitle: Text(
        label2,
        style: TextStyle(fontSize: 15, color: Colors.white30),
      ),
    );
  }
}
// done
