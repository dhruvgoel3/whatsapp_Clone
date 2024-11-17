import 'package:flutter/material.dart';

class ChatWithBusiness {
  final String label;
  final String imagePath;

  ChatWithBusiness(this.label, this.imagePath);
}

List<ChatWithBusiness> items = [
  ChatWithBusiness("Maha Mumbai", "assets/dhruv_image_neww_one_mc_d.jpg"),
  ChatWithBusiness("Maha Mumbai", "assets/dhruv_image_neww_one_mc_d.jpg"),
  ChatWithBusiness("Maha Mumbai", "assets/dhruv_image_neww_one_mc_d.jpg"),
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
      appBar: AppBar(title: const Text("Business Chat")),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(items[index].imagePath),
                    ),
                    title: Text(items[index].label),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
