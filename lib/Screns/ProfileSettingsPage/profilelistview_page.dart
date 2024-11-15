import 'package:flutter/material.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/body_page.dart';

class ProfilelistviewPage extends StatefulWidget {
  const ProfilelistviewPage({super.key});

  @override
  State<ProfilelistviewPage> createState() => _ProfilelistviewPageState();
}

class _ProfilelistviewPageState extends State<ProfilelistviewPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: Options.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: ListTile(
            leading:  Icon(
              Options[index].icon,
              color: Colors.white54,size: 25  ,
            ),

            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9.0),
              child: Text(
                Options[index].label,
                style: TextStyle(
                    fontSize: 17, fontWeight: FontWeight.w400, color: Colors.white),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(Options[index].text,style: TextStyle(fontSize: 15,color: Colors.white54),),
            ),

          ),
        );
      }
    );
  }
}
