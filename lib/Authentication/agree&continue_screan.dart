import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/round_button.dart';
class AgreeAndContinue extends StatefulWidget {
  const AgreeAndContinue({super.key});

  @override
  State<AgreeAndContinue> createState() => _AgreeAndContinueState();
}

class _AgreeAndContinueState extends State<AgreeAndContinue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      body: Column(
        children: [
          SizedBox(height: 20,),
          RoundButton(title: 'Agree and Continue',
          onTap: (){},)
        ],
      ),
    );
  }
}
