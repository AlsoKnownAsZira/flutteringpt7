import 'package:flutter/material.dart';
import 'package:get/get.dart';

class tallyController extends GetxController {
  //obs = observe (data akan dipantau sehingga bisa digunakan)
  // semua yang ada di sini custom, jadi bisa buat func sesuai kebutuhan
  var data = 0.obs;
  increment() {
    data += 1;
  }

  reset() {
    data.value = 0;
   
  }

  decrement() {
    data -= 1;
  }
}

class tally_counter extends StatelessWidget {
  final myController = Get.put(tallyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tally Counter with GetX"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //yang didalam obx hanya yang direfresh tiap saat
            Obx(
              () {
                return Text(
                  "${myController.data.value}",
                  style: TextStyle(fontSize: 50),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red
                  ),
                    onPressed: () {
                      myController.decrement();
                    },
                    child: Icon(Icons.remove)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey
                  ),
                    onPressed: () {
                      myController.reset();
                    },
                    child: Icon(Icons.restart_alt)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen
                  ),
                    onPressed: () {
                      myController.increment();
                    },
                    child: Icon(Icons.add)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
