import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/GetBuilder/builder_controller.dart';

class BuilderHome extends StatelessWidget {
  BuilderHome({Key? key}) : super(key: key);
// if init property is not used in Getx<Typpe of Controller> then
// create the instance of the class shown below
  builderController buildcontroller = Get.put(builderController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          title: const Text("GetxBuilder Home Statemanagement")),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Here we have used the Builder instead of Getx and obx
              GetBuilder<builderController>(
                // init: builderController(),
                builder: (controller) {
                  return Text(
                    "The Value is ${buildcontroller.count}",
                    style: const TextStyle(fontSize: 25),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    buildcontroller.increment();

                    // if instance of controller not created at top
                    // Get.find<builderController>().increment();
                  },
                  child: const Text("Increment"))
            ]),
      ),
    ));
  }
}
