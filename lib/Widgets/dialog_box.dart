import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dialog Box using flutter")),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: MaterialButton(
                  onPressed: () {
                    Get.defaultDialog(
                        barrierDismissible: false,
                        title: "Are you Sure You Wanna exit",
                        middleText: "",
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                "Yes",
                                style: TextStyle(color: Colors.red),
                              )),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("No")),
                        ]);
                  },
                  child: const Text("Show Dialog")),
            )
          ]),
    );
  }
}
