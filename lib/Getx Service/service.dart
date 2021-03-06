import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

// This class is like a GetxController.
// It shares the same lifecycle (onInit(), onReady(), onClose()).
// It just notfies Getx Dependency Injection System,
//  that this subclass can not be removed from memory.

class Service extends GetxService {
  Future<void> incrementCounter() async {
    SharedPreferences preferences =
        await SharedPreferences.getInstance();

    int counter = (preferences.getInt('counter') ?? 0) + 1;
    print('Pressed $counter times');
    await preferences.setInt('counter', counter);
  }
}
