import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_learning/Binding/all_controller_binding.dart';
import 'package:getx_learning/Binding/binding_home_test.dart';
import 'package:getx_learning/Binding/home_controller.dart';
import 'package:getx_learning/Getx%20Service/service_home.dart';
import 'package:getx_learning/Internalization/messages.dart';
import 'package:getx_learning/Widgets/dialog_box.dart';
import 'package:getx_learning/Widgets/snack_bar.dart';
import 'package:getx_learning/home_screen.dart';
import 'package:getx_learning/next_screen.dart';

Future<void> main() async {
  await initServices();
  // Here You can call all the binding

  // AllControllerBinding().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // For binding
    return GetMaterialApp(
      title: "GetX Learning App",
      initialBinding: AllControllerBinding(),

// If binding is applied at route level
// getPages:[
// GetPage(
// name:'/home',
// page:()=>HomeScreen(),
// binding:HomeControllerBinding(),
      // ),
      // ]

// Binding Builder (If we don't want use separate binding class)
//  getPages:[
// GetPage(
// nameL'/home',
// page:()=>HomeScreen(),
// binding:BindingBuilder(()=>{
//   Get.lazyPut<HomeController>(()=>HomeController())
// })
// )
//
// ]
      home: BuildingHomeTest(),
    );
    // This is Upto Binding which has been done yet.
    // return GetMaterialApp(
    //     translations: Messages(), // your Translations
    //     locale: Locale('en',
    //         'US'), // default translations // to get device locale Get.deviceLocal
    //     fallbackLocale: Locale(
    //         'en', 'US'), // fallback locale if wrong locale found

    //     defaultTransition: Transition.zoom,
    //     initialRoute: "/",
    //     debugShowCheckedModeBanner: false,
    //     title: "GetX Tutorial",
    //     getPages: [
    //       GetPage(name: '/', page: () => SnackBars()),
    //       GetPage(name: '/home', page: () => HomeScreen()),
    //       GetPage(
    //           name: '/dialogScreen',
    //           page: () => DialogsBox(),
    //           // To Control the transition route wise
    //           // if specified will override the default transition
    //           transition: Transition.leftToRight),
    //       GetPage(
    //           name: '/nextScreen',
    //           page: () => NextScreen(),
    //           transition: Transition.downToUp)
    //     ],
    //     home: ServiceHome()
  }
}
