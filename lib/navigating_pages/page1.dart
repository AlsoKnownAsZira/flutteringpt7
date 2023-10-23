import 'package:flutteringpt7/navigating_pages/page2.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'page0.dart';

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text('Page1'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.offNamed("/page2");
                },
                child: Text("Page2")),
            ElevatedButton(
                onPressed: () {
                 Get.offNamed("/page0");
                },
                child: Text("Back Home"))
          ],
        ),
      ),
    );
  }
}
