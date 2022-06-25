import 'package:get/get.dart';

class builderController extends GetxController {
  var count = 0;

  void increment() {
    count++;
    update(); // it will update the count variable on UI which uses it
  }
}
