import 'package:get/get.dart';
// In this tutorial We are learning about the separation of the businees logic with
////the Ui Part

class Student {
  // classes can be made observable by making individuals variables Rx or by making the entire Class observable.

  // Individuals variable Rx

  // var name = "Carl".obs;

  // var age = 18.obs;

  // To make the Entire class Observable
  var name;
  var age;
  Student({this.name, this.age});
}
