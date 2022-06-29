import 'package:get/get.dart';
import 'package:getx_learning/student.dart';

class MyController extends GetxController {
  // var student = Student();

  // void convertToUpperCase() {
  //   student.name.value = student.name.value.toUpperCase();
  // }

  // void convertToLowerCase() {
  //   student.name.value = student.name.value.toLowerCase();
  // }
  var count = 0.obs;

  void increment() {
    count++;
  }

  var student = Student(name: "Vijay", age: 18).obs;

  void convertUpperCase() {
    student.update((student) {
      student!.name = student.name.toString().toUpperCase();
    });
  }

  void convertLowerCase() {
    student.update((student) {
      student!.name = student.name.toString().toLowerCase();
    });
  }
}
