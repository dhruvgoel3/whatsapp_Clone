import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/round_button.dart';
class TwoStepVerification extends StatelessWidget {
  const TwoStepVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      appBar: AppBar(
          backgroundColor: Color(0xff0a131a),
          title: Text(
            "Two-step verificationn",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          ),
          leading: Icon(Icons.arrow_back, color: Colors.white)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 38.0),
            child: Image.asset("assets/Screenshot 2025-01-20 231533.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: SizedBox(height: 20,),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Text("For extra security,turn on two-step verification ,which",
                  style: TextStyle(color: Colors.grey, fontSize: 14)),
              Text("will require a PIN when registering your phone number",
                  style: TextStyle(color: Colors.grey, fontSize: 14)),

              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                Text("with whatsapp again",
                    style: TextStyle(color: Colors.grey, fontSize: 14)),
                SizedBox(width: 4,),
                Text("Learn more",
                    style: TextStyle(color: Colors.blue, fontSize: 14)),
              ]),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: RoundButton(title: "Turn on", onTap: (){}),
              )
            ],
          ),
        ],
      ),
    );
  }
}
