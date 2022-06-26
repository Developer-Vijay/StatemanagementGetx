import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/ControllerLifeCycle/my_controller_getx_controller.dart';

// ignore: must_be_immutable
class HomeTest extends StatelessWidget {
  HomeTest({Key? key}) : super(key: key);
  MyGetxController myConroller = Get.put(MyGetxController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: const Text("Home Test Controller")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GetBuilder<MyGetxController>(
            // instead of using this we will go to the my control
            //class and override the methods just go to myControllerx class you will see it
            // initState: (state) => myConroller.increment(),
            // dispose: (_) => myConroller.cleanUpTask(),
            builder: (controller) {
              return Text("The Vlue of count is ${controller.count}");
            },
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                myConroller.increment();
              },
              child: const Text("Increment"))
        ],
      )),
    ));
  }
}
