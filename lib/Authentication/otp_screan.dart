import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/round_button.dart';
import 'package:whatsapp/bottombar.dart';

import '../Widgets/helper.dart';
import 'otp_screan.dart';

class OtpScrean extends StatefulWidget {
  final String phonenumber;
  OtpScrean({super.key, required this.phonenumber});

  @override
  State<OtpScrean> createState() => _OtpScreanState();
}

class _OtpScreanState extends State<OtpScrean> {
  bool loading = false;

  final auth = FirebaseAuth.instance;

  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            UiHelper.CustomText(
                text: "Verifying your number",
                height: 20,
                color: const Color(0XFF00A884),
                fontweight: FontWeight.bold),
            const SizedBox(
              height: 30,
            ),
            UiHelper.CustomText(
                text: "You've tried to register +91${widget.phonenumber}",
                height: 15),
            UiHelper.CustomText(
                text: "recently. Wait before requesting an sms or a call",
                height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "with your code. ", height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: UiHelper.CustomText(
                      text: "Wrong number?",
                      height: 15,
                      color: const Color(0XFF00A884)),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomContainer(otp1Controller),
                const SizedBox(
                  width: 10,
                ),
                UiHelper.CustomContainer(otp2Controller),
                const SizedBox(
                  width: 10,
                ),
                UiHelper.CustomContainer(otp3Controller),
                const SizedBox(
                  width: 10,
                ),
                UiHelper.CustomContainer(otp4Controller),
                const SizedBox(
                  width: 10,
                ),
                UiHelper.CustomContainer(otp5Controller),
                const SizedBox(
                  width: 10,
                ),
                UiHelper.CustomContainer(otp6Controller)
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            UiHelper.CustomText(
                text: "Didn’t receive code?",
                height: 14,
                color: const Color(0XFF00A884)),
            SizedBox(
              height: 20,
            ),
            RoundButton(
                title: 'Next',
                onTap: () async {
                  final authCredential = PhoneAuthProvider.credential(
                      verificationId: widget.phonenumber,
                      smsCode: otp1Controller.text.toString() +
                          otp2Controller.text.toString() +
                          otp3Controller.text.toString() +
                          otp4Controller.text.toString() +
                          otp5Controller.text.toString() +
                          otp6Controller.text.toString());
                  try {
                    await auth.signInWithCredential(authCredential);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BottomBar()));
                  } catch (e) {}
                })
          ],
        ),
      ),
    );
  }
}
