import 'package:flutter/material.dart';
import 'package:get/get.dart';

class dialog_snackbar extends StatelessWidget {
  const dialog_snackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dialog and snackbar with getx state management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                      title: "Hello!",
                      content: Text(
                          "This is dialog with GetX! very simple ain't it?"));
                },
                child: Text("dialog w/getx")),
                SizedBox(height: 10,),
            ElevatedButton(
                onPressed: () {
                  Get.snackbar("Hello!", "this is snackbar with GetX!", snackPosition: SnackPosition.BOTTOM, isDismissible:true );
                },
                child: Text("Snackbar w/GetX"))
          ],
        ),
      ),
    );
  }
}
