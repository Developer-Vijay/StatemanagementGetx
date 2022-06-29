import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_learning/Binding/all_controller_binding.dart';
import 'package:getx_learning/Binding/home_controller.dart';
import 'package:getx_learning/GetxController/my_controller.dart';
import 'package:getx_learning/home_screen.dart';

class BuildingHomeTest extends StatelessWidget {
  const BuildingHomeTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Binding"),
          ),
          body: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(
                  'The value is ${Get.find<MyController>().count}')),
              ElevatedButton(
                  onPressed: () {
                    Get.find<MyController>().increment();
                  },
                  child: const Text("Increment")),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.to(const HomeScreen());

                    // For name Routes

                    // Get.toNamed('/homeScreen');

                    // for normal routes

                    // Get.to(HomeScreen(), binding: HomeControllerBinding());
                  },
                  child: Text("Home")),
            ],
          )),
        ),
      ),
    );
  }
}



/*
Smart Management
Getx provides Smart Management that lets us configure how dependencies behave in terms of memory management

// In Main.dart file
GetMaterialApp{
  smartMAnagement:SmartManagment.full // or .KeepFactory or .onlyBuilder


  Full Mode

  ============
  Everthing gets disposed as soon as the route is removed from the navigation stack,
  unleess declared permanent.

  // SmartManagement.keepFactory
  =================================
  Just like smartManager.full , it will remove it's dependencies when '

  it's not being used anymore . However , it will keep their factory ,
  which means it will recreate the dependency if you need that instance again.


  // SmartManagement.onlyBuilders
  ===================================

  // With this option , only controllers started in init: or loaded into a binding 
  with Get.lazyPut() will be disposed.

  if you use Get.push() or Get.putAsync() or any aother approach

  SmartManagment will not have permissions to exclude this dependency.
   
}
*/