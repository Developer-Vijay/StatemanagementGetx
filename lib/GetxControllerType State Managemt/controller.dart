import 'package:get/get.dart';

class Controllers extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }
}
