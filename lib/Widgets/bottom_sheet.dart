import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheets extends StatelessWidget {
  const BottomSheets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Bottom Sheet")),
        body: Center(
            child: MaterialButton(
          onPressed: () {
            Get.bottomSheet(
              Wrap(children: [
                // Here Get.theme is used for the changing the theme of
                //the screen but its not working now later on i will make it rum.
                ListTile(
                  leading: const Icon(Icons.wb_sunny_outlined),
                  title: const Text("Light Theme"),
                  onTap: () => {Get.changeTheme(ThemeData.light())},
                ),
                ListTile(
                  title: const Text("Dark Theme"),
                  leading: const Icon(Icons.wb_sunny_outlined),
                  onTap: () {
                    Get.changeTheme(ThemeData.dark());
                  },
                )
              ]),
              //barrierColor: Colors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              backgroundColor: Colors.white,
              isDismissible: true,
            );
          },
          child: const Text("Show Bottom Sheet"),
        )),
      ),
    );
  }
}
