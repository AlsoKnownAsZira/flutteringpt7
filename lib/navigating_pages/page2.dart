import 'package:flutteringpt7/navigating_pages/page0.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  const page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text('page2'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.offNamed("/page3");
                },
                child: Text("Page3")),
            ElevatedButton(
                onPressed: () {
                  Get.offNamed("/page0");
                },
                child: Text("Back Home")),
                 ElevatedButton(
                onPressed: () {
                 Get.offNamed("/page1");
                },
                child: Text("Page 1")),
          ],
        ),
      ),
    );
  }
}
