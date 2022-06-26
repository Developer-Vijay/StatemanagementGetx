import 'package:flutter/material.dart';
import 'package:getx_learning/GetxWorkers/workers_controller.dart';
import 'package:get/get.dart';

class WorkersHome extends StatelessWidget {
  WorkersHome({Key? key}) : super(key: key);
  WorkersController workersController = Get.put(WorkersController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: const Text("Workers")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                workersController.increment();
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                workersController.increment();
                // myConroller.increment();
              },
              child: const Text("Increment"))
        ],
      )),
    ));
  }
}
