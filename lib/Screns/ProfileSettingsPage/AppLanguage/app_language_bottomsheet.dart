import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class AppLanguageBottomsheet extends StatefulWidget {
  const AppLanguageBottomsheet({super.key});

  @override
  State<AppLanguageBottomsheet> createState() => _AppLanguageBottomsheetState();
}

class _AppLanguageBottomsheetState extends State<AppLanguageBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("Getx Bottom Sheet "),
        subtitle: Text("Hello Getx"),
        leading: Icon(
          CupertinoIcons.heart_circle_fill,
          color: Colors.blue,
        ),
        onTap: () {
          Get.bottomSheet(Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.amber,
            ),
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    Get.changeTheme(ThemeData.light());
                  },
                  leading: Icon(Icons.light_mode),
                  title: Text("Light Theme"),
                ),
                ListTile(
                  leading: Icon(Icons.dark_mode),
                  title: Text("Dark Theme"),
                  onTap: () {
                    Get.changeTheme(ThemeData.dark());
                  },
                )
              ],
            ),
          ));
        },
      ),
    );
  }
}
