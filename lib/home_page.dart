import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
