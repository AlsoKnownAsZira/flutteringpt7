import 'package:flutter/material.dart';
import 'package:flutteringpt7/controllers/inject_controller.dart';
import 'package:flutteringpt7/pages/dialog_snackbar.dart';
import 'package:flutteringpt7/pages/getx_worker.dart';
import 'package:flutteringpt7/pages/inject_page1.dart';
import 'package:flutteringpt7/pages/reactive_types.dart';
import 'package:flutteringpt7/pages/tally_counter.dart';
import 'package:flutteringpt7/pages/tally_state.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final pageOnec = Get.lazyPut(() => inject_controller());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: inject_page1(),
    );
  }
}
