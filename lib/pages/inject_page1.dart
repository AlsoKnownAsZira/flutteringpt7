import 'package:flutter/material.dart';
import 'package:flutteringpt7/controllers/inject_controller.dart';
import 'package:flutteringpt7/pages/inject_page2.dart';
import 'package:get/get.dart';

class inject_page1 extends StatelessWidget {
  inject_page1({super.key});
   final pageOnec = Get.find<inject_controller>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page1"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "${pageOnec.data1['name']} - ${pageOnec.data1['age']}  - ${pageOnec.data1['adress']}",
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => inject_page2(),
                      ));
                },
                child: Text(">>>"))
          ],
        ),
      ),
    );
  }
}
