import 'package:flutter/material.dart';
import 'package:get/get_connect/sockets/src/socket_notifier.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_learning/Internalization/home_internalization.dart';
import 'package:getx_learning/Internalization/messages.dart';
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
        translations: Messages(), // your Translations
        locale: Locale('en',
            'US'), // default translations // to get device locale Get.deviceLocal
        fallbackLocale: Locale(
            'en', 'US'), // fallback locale if wrong locale found

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
        home: HomeInternalization());
  }
}
