import 'package:get/get.dart';
import 'package:getx_learning/GetxController/my_controller.dart';
import 'package:getx_learning/GetxWorkers/workers_controller.dart';

class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    // here I am doing dependency Injection

    Get.lazyPut<MyController>(() => MyController());
    Get.lazyPut<WorkersController>(() => WorkersController());
  }
}
