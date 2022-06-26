import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/ControllerLifeCycle/my_controller_unique_id.dart';

class HomeIdTestBed extends StatelessWidget {
  HomeIdTestBed({Key? key}) : super(key: key);
  // instance of MycontrollerUniqueId
  MyControllerUniqueId myControllers =
      Get.put(MyControllerUniqueId());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: const Text("Unique Id")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GetBuilder<MyControllerUniqueId>(
            id: 'txtCount',
            builder: (controller) {
              return Text(
                  "The Value of count is ${controller.count}");
            },
          ),
          GetBuilder<MyControllerUniqueId>(
            builder: (controller) {
              return Text(
                  "The Value of count is ${controller.count}");
            },
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                // if we press the button only the widget that has id will be updated
                myControllers.increment();
              },
              child: const Text("Increment"))
        ],
      )),
    ));
  }
}
