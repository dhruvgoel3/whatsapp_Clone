import 'package:flutter/material.dart';
import 'package:whatsapp/AllAppUI/ChatPage/chats.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/AccountOption/Email_address_page.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/AccountOption/add_account_page.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/AccountOption/change_number_page.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/AccountOption/passkeys.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/AccountOption/request_acc_info.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/AccountOption/security_options.dart';
import 'package:whatsapp/Screns/ProfileSettingsPage/AccountOption/two_step_verification.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key,});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
          backgroundColor: Color(0xff0a131a),
          title: Text(
            "Account",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ChatPage()));
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(
          children: [
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SecurityOptions()));
              },
              leading: Icon(Icons.security,color: Colors.grey,size: 25,),
              title: Text("Security notifications",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 16),),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Passkeys()));
              },
              leading: Icon(Icons.key_sharp,color: Colors.grey,size: 25,),
              title: Text("Passkeys",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 16),),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>EmailAddressPage()));
              },
              leading: Icon(Icons.email_outlined,color: Colors.grey,size: 25,),
              title: Text("Email address",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 16),),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>TwoStepVerification()));
              },
              leading: Icon(Icons.password,color: Colors.grey,size: 25,),
              title: Text("Two-step verification",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 16),),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangeNumberPage()));
              },
              leading: Icon(Icons.phonelink_ring_rounded,color: Colors.grey,size: 25,),
              title: Text("Change number",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 16),),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> RequestAccInfo()));
              },
              leading: Icon(Icons.file_copy_rounded,color: Colors.grey,size: 25,),
              title: Text("Request account info",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 16),),
            ),
            ListTile(
              onTap: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddAccountPage()));

              },
              leading: Icon(Icons.person_add_alt_outlined,color: Colors.grey,size: 25,),
              title: Text("Add account",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 16),),
            ),
            ListTile(
              leading: Icon(Icons.delete_outlined,color: Colors.grey,size: 25,),
              title: Text("Delete account",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 16),),
            ),


          ],
        ),
      ),
    );
  }
}
