import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Next Screen")),
        body: Center(
          child:
              Column(children: const [Text("This is Next Screen")]),
        ),
      ),
    );
  }
}
