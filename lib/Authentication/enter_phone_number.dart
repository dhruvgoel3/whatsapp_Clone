import 'package:flutter/material.dart';
import 'package:whatsapp/Authentication/otp_screan.dart';
import 'package:whatsapp/Widgets/round_button.dart';

class EnterPhoneNumber extends StatefulWidget {
  const EnterPhoneNumber({super.key});

  @override
  State<EnterPhoneNumber> createState() => _EnterPhoneNumberState();
}

class _EnterPhoneNumberState extends State<EnterPhoneNumber> {
  TextEditingController phoneController = TextEditingController();
  String selectedCountry = "India";
  List<String> countries = ["India", "USA", "UK", "Canada"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a131a),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Enter your phone number",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text("WhatsApp will need to verify your phone number.",
                style: TextStyle(
                    color: Colors.white38,
                    fontWeight: FontWeight.w500,
                    fontSize: 15)),
            Padding(
              padding: const EdgeInsets.only(left: 33.0),
              child: Row(
                children: [
                  Text("Carrier SMS charges may apply.",
                      style: TextStyle(
                          color: Colors.white38,
                          fontWeight: FontWeight.w500,
                          fontSize: 13)),
                  Text("What's my number?",
                      style: TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.w500,
                          fontSize: 13)),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: DropdownButtonFormField(
                items: countries.map((String country) {
                  return DropdownMenuItem(
                    child: Text(country),
                    value: country,
                  );
                }).toList(),
                onChanged: (newvalue) {
                  setState(() {
                    selectedCountry = newvalue!;
                  });
                },
                value: selectedCountry,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884))),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 40,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "+91",
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF00A884)))),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 250,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: phoneController,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 40,),
            RoundButton(title: "next", onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScrean(phonenumber: '',)));
            })
          ],
        ),
      ),
    );
  }
}
