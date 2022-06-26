import 'package:get/get.dart';

// Workers trigger specific callbacks when an event occurs.

class WorkersController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  void onInit() {
    // called every time when value of count variables changes
    // ever(count, (_) => print(count));

    // called every time the value of any variable from the list changes
    // everAll ([count],(_)=>print(count));

    // called only once when the variable value changes
    // once(count,(_)=>print("When the user stop typing for 1 sec the value of count prints"))

    // Called EveryTime the user stops typing for the 1 second
    // debounce((count,(_)=>print("When the user stop typing for the 1 sec the value of count will be printed"),time:Duration(seconds:1)))

    // Ignore all changes withing 3 seconds.
    // Imagine that the user can earn coin by clicking something,
    // if he clicked 300 times in same minute,
    // he would have 300 coins, using the interval,
    // you you can set a time frame for 3 seconds,
    //  and even then clicking 300 or a thousand times,
    // the maximum he would get in 1 minute would be 20 coins,
    // clicking 300 or 1 million times
    // interval (count,(_)=>print("Ignore all changes"),time:Duration(seconds:3));

    super.onInit();
  }
}
