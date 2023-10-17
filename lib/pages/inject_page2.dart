import 'package:flutter/material.dart';
import 'package:flutteringpt7/controllers/inject_controller.dart';
import 'package:get/get.dart';

class inject_page2 extends StatelessWidget {
  inject_page2({super.key});
  final pageTwoC = Get.find<inject_controller>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page2"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "${pageTwoC.data2['name']} - ${pageTwoC.data2['age']}  - ${pageTwoC.data2['adress']}",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
