import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/round_button.dart';
class Passkeys extends StatelessWidget {
  const Passkeys({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
          backgroundColor: Color(0xff0a131a),
          title: Text(
            "Passkeys",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          ),
          leading: Icon(Icons.arrow_back, color: Colors.white)),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical:70),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(),
              child: Image.asset("assets/Screenshot 2025-01-20 225137.png",height: 150,),
            ),
            SizedBox(height: 10,),
            Text(
              "Login in securely and protect",
              style: TextStyle(color: Colors.white, fontSize: 22,fontWeight: FontWeight.w500),
            ),
            Text(
              "your account",
              style: TextStyle(color: Colors.white, fontSize: 22,fontWeight: FontWeight.w500),
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.security,size: 26,color: Colors.grey,),
                  title: Text("Create a passkey for a secure , easy",style: TextStyle(fontSize: 17,color: Colors.white,),),
                  subtitle: Text("way log into your account",style: TextStyle(fontSize: 17,color: Colors.white,)),
                ),
                ListTile(
                  leading: Icon(Icons.fingerprint,size: 26,color: Colors.grey,),
                  title: Text("Login into whatsapp with your face,",style: TextStyle(fontSize: 17,color: Colors.white,),),
                  subtitle: Text("fingerprint or screen lock",style: TextStyle(fontSize: 17,color: Colors.white,)),
                ),
                ListTile(
                  leading: Icon(Icons.laptop,size: 26,color: Colors.white,),
                  title: Text("Yout passkey is stored safely in your",style: TextStyle(fontSize: 17,color: Colors.white,),),
                  subtitle: Text("password manager",style: TextStyle(fontSize: 17,color: Colors.white,)),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: RoundButton(title: "Create passkey", onTap: (){}),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
