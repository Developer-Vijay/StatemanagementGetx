import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_learning/GetxController/my_controller.dart';

// ignore: must_be_immutable
class TestingOfController extends StatelessWidget {
  TestingOfController({Key? key}) : super(key: key);

// created the instance of the class which is object
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("The State Management"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Accessing the student name from student class using my controller class
                Obx(
                  () => Text(
                    "My name is ${myController.student.value.name}",
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      // accessing the mycontroller function to the testing screen
                      // If individual variables are observable
                      myController.convertUpperCase();

                      //If entire class is obeservable
                      // my controller .convertUppercase();
                    },
                    child: const Text("To Upper Case")),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      myController.convertLowerCase();
                    },
                    child: const Text("To Lower Case")),
              ]),
        ),
      ),
    );
  }
}
