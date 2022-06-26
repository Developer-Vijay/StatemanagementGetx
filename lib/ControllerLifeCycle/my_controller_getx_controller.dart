import 'package:get/get.dart';

class MyGetxController extends GetxController {
  var count = 0;

  void increment() async {
    await Future.delayed(Duration(seconds: 5));
    this.count++;
    update();
  }

  void cleanUpTask() {
    print("Clean up Task");
  }

  //Better Approach
  @override
  void onInit() {
    print("Init Called");
    increment();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
