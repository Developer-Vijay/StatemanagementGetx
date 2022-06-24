import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBars extends StatelessWidget {
  const SnackBars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("SnackBar"),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // here I have used the get.snackbar()
              // first is snackbar title
              // snackbar message
              Center(
                child: MaterialButton(
                    child: const Text("get snackbar"),
                    onPressed: (() {
                      Get.snackbar(
                          "Snack Bar Title", "Snack bar message",
                          backgroundColor: Colors.red[400],
                          colorText: Colors.white,
                          snackPosition: SnackPosition.BOTTOM);
                    })),
              )
            ]),
      ),
    );
  }
}
