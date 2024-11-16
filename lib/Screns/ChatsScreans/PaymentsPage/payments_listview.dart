import 'package:flutter/material.dart';

class ChatWithBusiness {
  final String label;
  final Image image;

  ChatWithBusiness(this.label, this.image);
}

List<ChatWithBusiness> items = [
  ChatWithBusiness("Maha Mumbai", Image.asset("assets/dhruv_image_neww_one_mc_d.jpg")),
  ChatWithBusiness("Maha Mumbai", Image.asset("assets/dhruv_image_neww_one_mc_d.jpg")),
  ChatWithBusiness("Maha Mumbai", Image.asset("assets/dhruv_image_neww_one_mc_d.jpg")),
];

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: items[index].image.image,  // Access the actual image data
            ),
            title: Text(items[index].label),
          );
        },
      ),
    );
  }
}
