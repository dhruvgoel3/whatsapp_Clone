import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SwitchController extends GetxController {
  var dataforcalls = false.obs; // Observable for switch value
}

class Utils {
  final switchController = Get.put(SwitchController());

  bool flag = true;

  Widget getSwitch() {
    return Obx(
          () => Switch(
        activeTrackColor: Colors.green,
        activeColor: Colors.black,
        inactiveTrackColor: Color.fromRGBO(17, 25, 28, 1.0),
        inactiveThumbColor: Colors.grey,
        value: switchController.dataforcalls.value,
        onChanged: (value) {
          print('Switch Value: $value');
          switchController.dataforcalls(value); // Update the observable
          if (value) {
            print("Switch turned ON");
          } else {
            print("Switch turned OFF");
          }
        },
      ),
    );
  }
}
