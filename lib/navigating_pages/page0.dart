import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'page1.dart';

class page0 extends StatelessWidget {
  const page0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Start here'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        ElevatedButton(
            onPressed: () {
           Get.offNamed("/page1");
            },
            child: Text("Page1")),
             ElevatedButton(
            onPressed: () {
           Get.offNamed("/page2");
            },
            child: Text("Page2")),
             ElevatedButton(
            onPressed: () {
           Get.offNamed("/page3");
            },
            child: Text("Page3"))
          ],
        ),
      ),
    );
  }
}
