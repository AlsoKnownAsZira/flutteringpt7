import 'package:flutteringpt7/navigating_pages/page0.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class page3 extends StatelessWidget {
  const page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text('page3'),
      ),
     body: Center(
        child: Column(
          children: [
             ElevatedButton(
                onPressed: () {
                 Get.offNamed("/page2");
                },
                child: Text("Page 2")),
            ElevatedButton(
                onPressed: () {
                 Get.offNamed("/page0");
                },
                child: Text("Back Home")),
              
          ],
        ),
      ),
    );
  }
}
