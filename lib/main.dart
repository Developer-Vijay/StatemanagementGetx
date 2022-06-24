import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_learning/State%20Management/reactive_state.dart';
import 'package:getx_learning/Widgets/dialog_box.dart';
import 'package:getx_learning/Widgets/snack_bar.dart';
import 'package:getx_learning/home_screen.dart';
import 'package:getx_learning/next_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.zoom,
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      title: "GetX Tutorial",
      getPages: [
        GetPage(name: '/', page: () => SnackBars()),
        GetPage(name: '/home', page: () => HomeScreen()),
        GetPage(
            name: '/dialogScreen',
            page: () => DialogsBox(),
            // To Control the transition route wise
            // if specified will override the default transition
            transition: Transition.leftToRight),
        GetPage(
            name: '/nextScreen',
            page: () => NextScreen(),
            transition: Transition.downToUp)
      ],
      home: ReactiveState(),
    );
  }
}
