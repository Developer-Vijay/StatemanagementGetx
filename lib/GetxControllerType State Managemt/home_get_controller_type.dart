import 'package:flutter/material.dart';
import 'package:getx_learning/GetxControllerType%20State%20Managemt/controller.dart';
import 'package:get/get.dart';

class HomeGetControllerType extends StatelessWidget {
  const HomeGetControllerType({Key? key}) : super(key: key);

// if init property is not used in GetX<Type> of Controller> then
// create the instance of controller as follows.
// MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(" State Management GetX Controller Type"),
        ),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<Controllers>(
              init: Controllers(),
              builder: (controller) {
                return Text(
                  "The value is ${controller.count}",
                  style: const TextStyle(fontSize: 25),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  //Controllers.increment();

                  // if instance of controller not created at top
                  Get.find<Controllers>().increment();
                },
                child: const Text("Increment"))
          ],
        )),
      ),
    );
  }
}
