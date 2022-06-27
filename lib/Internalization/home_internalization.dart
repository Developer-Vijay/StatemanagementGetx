import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_learning/Internalization/change_lang_controller.dart';

class HomeInternalization extends StatelessWidget {
  HomeInternalization({Key? key}) : super(key: key);

  ChangeLanguageController mylang =
      Get.put(ChangeLanguageController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Internalization"),
          ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'hello'.tr,
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                    onPressed: () {
                      mylang.changeLanguage('hi', 'IN');
                    },
                    child: const Text("Hindi")),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                    onPressed: () {
                      mylang.changeLanguage('en', 'US');
                    },
                    child: const Text("English")),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                    onPressed: () {
                      mylang.changeLanguage('fr', 'FR');
                    },
                    child: const Text("French")),
                const SizedBox(
                  height: 12,
                )
              ],
            ),
          )),
    );
  }
}
