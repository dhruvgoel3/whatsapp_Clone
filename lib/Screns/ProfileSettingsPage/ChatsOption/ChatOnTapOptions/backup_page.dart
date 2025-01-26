import 'package:flutter/material.dart';
import 'package:whatsapp/utils/switch.dart';

class BackupPage extends StatelessWidget {
  const BackupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
        backgroundColor: Color(0xff0a131a),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        title: Text("Chat backup", style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Backup settings",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                  Text("Backup your chats and media to your google",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                  Text("Account's storage.You can restore them on a new",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                  Text("phone after you download whatsapp on it.",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Local 8.05 am",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                  Text("Last Backup: Never",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Back up",
                        style: TextStyle(color: Colors.black),
                      ),
                      style:
                          ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    ),
                  ),
                  SizedBox(height: 25),
                  Text("Manage Google storage",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Column(children: [
                    SizedBox(height: 20,),
                    ListTile(
                      title: Text("Google account",style: TextStyle(color: Colors.white,fontSize: 16.5),),
                      subtitle:Text("None selected",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                    ),
                    ListTile(
                      title: Text("Frequency",style: TextStyle(color: Colors.white,fontSize: 16.5),),
                      subtitle:Text("Disabled",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                    ),
                    ListTile(
                      title: Text("Include videos",style: TextStyle(color: Colors.white,fontSize: 16.5),),
                      trailing: Utils().getSwitch(),
                      subtitle:Text("775 MB to bee uploaded",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                    ),
                    ListTile(
                      title: Text("Backup using cellular",style: TextStyle(color: Colors.white,fontSize: 16.5),),
                      trailing: Utils().getSwitch(),
                    ),
                    ]),
                  ),
                  SizedBox(height: 30,),
                  Text("End-to-end encryption",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                  Text("For added security,you can protect your backup with",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                  Text("end-to-end encryption.",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                  ListTile(
                    title: Text("End-to-end encrypted backup",style: TextStyle(color: Colors.white,fontSize: 16.5),),
                    subtitle:Text("Off",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                    leading: Icon(Icons.lock_outline,color: Colors.grey,),
                  ),
                ],
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}
