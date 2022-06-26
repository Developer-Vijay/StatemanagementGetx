import 'package:get/get.dart';

class MyControllerUniqueId extends GetxController {
  var count = 0;

  void increment() {
    count++;
    // Passing the Id
    update(['txtCount']);
  }
}
