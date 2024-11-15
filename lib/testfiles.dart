//
// Container(
// height: double.infinity,
// width: double.infinity,
// decoration: BoxDecoration(color: Color(0xff0a131a)),
// child: Column(
// children: [
// Padding(
// padding: const EdgeInsets.only(top: 5),
// child: Container(
// height: size.height * 0.06,
// width: size.width * 0.923,
// decoration: BoxDecoration(
// color: Color(0xff272c30),
// borderRadius: BorderRadius.circular(30)),
// child: Row(
// children: [
// Padding(
// padding: const EdgeInsets.only(left: 10),
// child: CircleAvatar(
// backgroundImage: AssetImage("assets/Ai circle.jpg"),
// radius: 19,
// ),
// ),
// SizedBox(
// width: 20,
// ),
// Text(
// "Ask meta AI or Search",
// style: TextStyle(
// fontSize: 18,
// color: Color(0xff3f4649),
// fontWeight: FontWeight.w500),
// ),
// ],
// ),
// ),




// endDrawer: Drawer(
// width: 250,
// child: ListView(
// children: [
// ListTile(
// title: Text("Chats"),
// onTap: () {
// Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChatPage()));
// },
// ),
// ListTile(
// title: Text("Updated"),
// onTap: () {
// Navigator.of(context).push(MaterialPageRoute(builder: (context) => Updates()));
// },
// ),
// ListTile(
// title: Text("Community"),
// onTap: () {
// Navigator.of(context).push(MaterialPageRoute(builder: (context) => Communities()));
// },
// ),
// ListTile(
// title: Text("Calls"),
// onTap: () {
// Navigator.of(context).push(MaterialPageRoute(builder: (context) => Calls()));
// },
// ),
//
//
// ],
// ),
// ),








//
// import 'package:flutter/material.dart';
//
// class BodyPage extends StatefulWidget {
//   const BodyPage({super.key});
//
//   @override
//   State<BodyPage> createState() => _BodyPageState();
// }
//
// class _BodyPageState extends State<BodyPage> {
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//
//     List<IconData> icons = [
//       Icons.key,
//       Icons.lock_outline,
//       Icons.person_pin_sharp,
//       Icons.favorite_border,
//       Icons.chat,
//       Icons.arrow_circle_down_sharp,
//       Icons.language,
//       Icons.help_outline,
//
//     ];
//     List<String> tittles = [
//       'Account',
//       'Privacy',
//       'Avatar',
//       'Favourites',
//       'Storage and data',
//       'App language',
//       'Help',
//       'Invite a friend',
//       'App updated',
//     ];
//     List<String> subTittle = [
//       'Security notifications,change,number',
//       'Block contacts,disappearing messages',
//       'Create,edit,profile photo',
//       'Add,reorder,remove',
//       'Theme,wallpapers,chat history',
//       'Message,group & call tones',
//       'Network usage,auto-download',
//       'English(device language)',
//       'Help centre,contact us,privacy policy'
//     ];
//
//     return ListView.builder(
//       shrinkWrap: true,
//       physics: ScrollPhysics(),
//       itemCount: tittles.length,
//       itemBuilder: (context, index) => ListTile(
//         // leading: CircleAvatar(radius: 25, backgroundColor: Color(0xff0a131a,),),
//         leading: Icon(icons[index]),
//         title: Text(tittles[index]),
//         subtitle: Text(subTittle[index]),
//       ),
//     );
//   }
// }



