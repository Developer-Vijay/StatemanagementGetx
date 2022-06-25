import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Notes

/* 
If we want that every time the value of varaible changes then all the widgets uses the varaible must 
update itself
then all the widgets which uses the variable must update itself then the variable must be reactive or 
observable and to make it Reactive (Rx)

.obs is used with variable value. 
To update the widget which uses Rx variable must be placed inside 
Obx(()=> Your widget which use Rx)
The widget will only upgrade if and only if the Rx variable value changes.

other ways of making the variable Rx

1- The first is using Rx(Type).
===============================

inital value is recommended , but not mandatory 

final name= RxString('');
final isLogged=RxBool(false);
final count=RxInt(0);
final balance =RxDouble(0.0);
final items=RxList<String>([]);


2. use Darts Generics, Rx<Type>
===================================

final name=Rx<String>('');
final count =Rx<Bool>(false);

final balance=Rx<Double>(0.0);
final number=Rx<Num>(0)
final items=Rx<List<String>>([]);
final myMap =Rx<Map<String,int>>(());
// custom classes - it can be any class, literaaly 

final user = Rx<user>();
 

*/
class ReactiveState extends StatelessWidget {
  ReactiveState({Key? key}) : super(key: key);
  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("The State Management"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    "Count Value is $count",
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      increment();
                    },
                    child: const Text("Increment"))
              ]),
        ),
      ),
    );
  }
}
