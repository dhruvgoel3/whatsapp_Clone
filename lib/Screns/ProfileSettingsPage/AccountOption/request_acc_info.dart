import 'package:flutter/material.dart';

class RequestAccInfo extends StatelessWidget {
  const RequestAccInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0a131a),
        appBar: AppBar(
            backgroundColor: Color(0xff0a131a),
            title: Text(
              "Request account info",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
            leading: Icon(Icons.arrow_back, color: Colors.white)),
        body: Column(children: [
          Divider(
            thickness: 1.1,
            color: Colors.white10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200.0),
            child: Text(
              "Account information",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
            ),
          ),
          Divider(
            thickness: 1.1,
            color: Colors.white10,
          ),
          ListTile(
            leading: Icon(
              Icons.file_copy,
              color: Colors.grey,
            ),
            title: Text(
              "Request account report",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Divider(
            thickness: 1.1,
            color: Colors.white10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Create a report of your Whatsapp account",
                      style: TextStyle(color: Colors.grey, fontSize: 14)),
                  Text("information  and settings,which you can acess or",
                      style: TextStyle(color: Colors.grey, fontSize: 14)),
                  Text("port to another app.this report does not include",
                      style: TextStyle(color: Colors.grey, fontSize: 14)),
                  Row(children: [
                    Text("your messages",
                        style: TextStyle(color: Colors.grey, fontSize: 15)),
                    SizedBox(
                      width: 3,
                    ),
                    Text("Learn more",
                        style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.w600, fontSize: 15)),
                  ]),
                ]),
          ),
          Divider(
            thickness: 1.1,
            color: Colors.white10,
          ),
          ListTile(
            leading: Icon(
              Icons.update,
              color: Colors.grey,
            ),
            title: Text(
              "Create reports automatically",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Divider(
            thickness: 1.1,
            color: Colors.white10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text("A new report will be created every month",
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
                SizedBox(
                  width: 3,
                ),
                Text("Learn", style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.w600, fontSize: 15)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 310.0),
            child: Text("more",style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.w600, fontSize: 15)),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(right: 238.0),
            child: Text(
              "Channels activity",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
            ),
          ),
          Divider(
            thickness: 1.1,
            color: Colors.white10,
          ),
          ListTile(
            leading: Icon(
              Icons.file_copy,
              color: Colors.grey,
            ),
            title: Text(
              "Request account report",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Divider(
            thickness: 1.1,
            color: Colors.white10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Create a report of your Whatsapp channel and",
                      style: TextStyle(color: Colors.grey, fontSize: 14)),
                  Text("information, ehich you can acess or port to",
                      style: TextStyle(color: Colors.grey, fontSize: 14)),
                  Row(children: [
                    Text("another app.",
                        style: TextStyle(color: Colors.grey, fontSize: 15)),
                    SizedBox(
                      width: 3,
                    ),
                    Text("Learn more",
                        style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.w600, fontSize: 15)),
                  ]),
                ]),
          ),
          Divider(
            thickness: 1.1,
            color: Colors.white10,
          ),
          ListTile(
            leading: Icon(
              Icons.update,
              color: Colors.grey,
            ),
            title: Text(
              "Create report automatically",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),


        ]));
  }
}
