import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/Dependency%20Injection/dependency_controller.dart';

class DependencyHome extends StatelessWidget {
  const DependencyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Dependency Controller instance will ve created even if it is not used
    // tag will be used to find the instance with tag name
    // Controller disposed when it is not used but if permanent is
    // true the instance will be alive throughout the app

    // DependencyController dependencyController = Get.put(
    //     DependencyController(),
    //     permanent: true,
    //     tag: 'instance1');

    // Instance will be created when it is used
    // fenix is similiar to "Permanent", the difference is that
    // the instance is discarded when is not being used,
    //but when it's use is needed again, Get will recreate the instance
    //Get .lazyPut(()=>DependencyController(),tags:'instance2',fenix:true);

    Get.putAsync<DependencyController>(
        () async => await DependencyController());

// Here permanent will be true by default and isSingleton is false

    // Get.create<DependencyController>(() => DependencyController());

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Dependency Home"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      // Instance will be created with tag
                      // Get.find<DependencyController>(tag: 'instance1');
                      // Find instance

                      Get.find<DependencyController>()
                          .incrementConter();
                    },
                    child: Text("Click Me"))
              ]),
        ),
      ),
    );
  }
}
