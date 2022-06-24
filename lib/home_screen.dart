import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Screen"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed("/nextScreen");
                    // Get.toOffNamed("/home");
                    //Go to home screen and cancel all previous screens / routes
                    // Get.offAllNamed("/home")
                    // Dynamic Url Link
                    // Get.toNamed("/home");
                    // /home?channel=Ripples Code & content =Flutter GetX,
                  },
                  child: const Text("Next Screen")),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.back();
                    // send the data to previous screen must use result as name
                    Get.back(result: 'This is from home Screen');
                  },
                  child: const Text("Back")),
              const SizedBox(
                height: 30,
              ),
              // getting the data from routes screen
              Text("${Get.arguments}")
            ],
          ),
        ));
  }
}
