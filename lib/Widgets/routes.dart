import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/Widgets/bottom_sheet.dart';
import 'package:getx_learning/home_screen.dart';

class Routes extends StatelessWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("routes Navigation")),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.to(HomeScreen(),
                        arguments: "Data from the Screen",
                        //         Get.to(const HomeScreen(),
                        // to make Screen Full Dialog
                        fullscreenDialog: true,
                        // to give animations
                        transition: Transition.zoom,
                        // Duration for the animation
                        duration: const Duration(milliseconds: 500),
                        // curve animation

                        curve: Curves.bounceInOut

                        // Go to home scree but no option to return to previous screen
                        // Get.off(homeScreen());

                        // Go to home Screen and cancel all previous screens/ routes
                        // Get.offAll(HomeScreen());

                        // Go to next Screen with some data
                        // Get.to(HomeScreen(),arguments: "Data from the Screen");

                        // Go to next Screen and recieve data sent from home screen
                        // var data=await Get.to(HomeScreen());
                        //print("The Recieved data is $data");

                        );
                  },
                  child: const Text("Go to Bottom Sheet"),
                )
              ]),
        ),
      ),
    );
  }
}
