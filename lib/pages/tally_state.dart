import 'package:flutter/material.dart';
import 'package:flutteringpt7/controllers/tally_controller.dart';
import 'package:flutteringpt7/pages/tally_counter.dart';
import 'package:get/get.dart';

class tally_state extends StatelessWidget {
  tally_state({super.key});
  final tallyC = Get.put(tally_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tally counter with reactive and simple"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //obx untuk reactive
            /*Obx(() => Text(
                  "${tallyC.value}",
                  style: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
                )),
            ElevatedButton(
                onPressed: () {
                  tallyC.increment();
                },
                child: Text("add")),
            ElevatedButton(
                onPressed: () {
                  tallyC.decrement();
                },
                child: Text("decrease"))*/
            //Getbuilder untuk simple getX

            GetBuilder<tally_controller>(
                builder: (controller) => Text(
                      "${controller.value}",
                      style:
                          TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
                    )),
            ElevatedButton(
                onPressed: () {
               
                tallyC.increment();
                },
                child: Text("add")),
            ElevatedButton(
                onPressed: () {
                
                       tallyC.decrement();
                },
                child: Text("decrease")),
            ElevatedButton(
                onPressed: () {
             
                       Get.find<tally_controller>().update();
                },
                child: Text("refresh"))
          ],
        ),
      ),
    );
  }
}
