import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/worker_controller.dart';
class getx_worker extends StatelessWidget {
   getx_worker({super.key});
  final workerC = Get.put(worker_controller());
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(
                "Terjadi perubahan : ${workerC.datapantau} kali",
                style: TextStyle(fontSize: 24),
              )),
              SizedBox(height: 20,),
              TextField(
                onChanged: (value) => workerC.change(),
                decoration: InputDecoration(
                  labelText:"input perubahan",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                ),
              )
            ],
          ),
        ),
      ),
       );
  }
}