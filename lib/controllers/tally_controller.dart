import 'package:get/get.dart';

class tally_controller extends GetxController {
  //Reactive state, auto update data
  /*RxInt value = 0.obs;
  void increment() => value++;
  void decrement() => value--;
*/
// simple state, update manual, bisa juga auto jika ditambah update()
  int value = 0;
  void increment() {
    value++;
    // update jika ingin auto
    //update();
  }

  void decrement() {
    if (value > 0) {
      value--;
    }
  }

  void refresh() {
    update();
  }
}
