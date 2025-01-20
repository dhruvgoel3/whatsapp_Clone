import 'package:flutter/material.dart';

import '../../../Widgets/round_button.dart';

class EmailAddressPage extends StatelessWidget {
  const EmailAddressPage({super.key});

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
        padding: const EdgeInsets.symmetric(vertical: 0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(),
              child: Image.asset(
                "assets/Screenshot 2025-01-20 231354.png",
                height: 150,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Add email to protect your",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              "account",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.security,
                    size: 26,
                    color: Colors.grey,
                  ),
                  title: Text(
                    "Verify tour account,even without SMS",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.question_answer_outlined,
                    size: 26,
                    color: Colors.grey,
                  ),
                  title: Text(
                    "Email helps us reach you in case of",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text("security and support issues",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      )),
                ),
                ListTile(
                  leading: Icon(
                    Icons.lock_outline,
                    size: 26,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Your email address won't be visiblr to",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text("others",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      )),
                ),
                Text(
                  "Learn more",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.green,
                      fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200.0),
                  child: RoundButton(title: "Create passkey", onTap: () {}),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
