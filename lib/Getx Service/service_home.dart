import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/Getx%20Service/service.dart';

Future<void> initServices() async {
  print('starting services.......');

  await Get.putAsync(() async => await Service());
  print('All Services get started.......');
}

class ServiceHome extends StatelessWidget {
  const ServiceHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("GetX Service"),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              ElevatedButton(
                  onPressed: () {
                    Get.find<Service>().incrementCounter();
                  },
                  child: Text("Increment"))
            ])),
      ),
    );
  }
}
