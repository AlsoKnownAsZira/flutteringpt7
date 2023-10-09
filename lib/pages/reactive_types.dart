import 'package:flutter/material.dart';
import 'package:flutteringpt7/controllers/type_controller.dart';
import 'package:get/get.dart';

class reactive_types extends StatelessWidget {
  reactive_types({super.key});
  final reactC = Get.put(type_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reactive Data types"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(() => Text(
                    "${reactC.dataInt}",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  )),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        reactC.incrementInt();
                      },
                      child: Text("Increment"))
                ],
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        reactC.decrementInt();
                      },
                      child: Text("decrement"))
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(() => Text("${reactC.dataString}")),
              ElevatedButton(
                  onPressed: () {
                    reactC.gantiString();
                  },
                  child: Text("Change String"))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(() => Text("${reactC.dataDouble}")),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        reactC.incrementDouble();
                      },
                      child: Text("Increment"))
                ],
              ),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        reactC.decrementDouble();
                      },
                      child: Text("Decrement"))
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(() => Text("${reactC.dataBool}")),
              ElevatedButton(
                  onPressed: () {
                    reactC.gantiBool();
                  },
                  child: Text("Update Bool"))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(() => Text("${reactC.dataList}")),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        reactC.tambahAngkaList();
                      },
                      child: Text("Tambah Angka")),
                  ElevatedButton(
                      onPressed: () {
                        reactC.ubahId0();
                      },
                      child: Text("Ubah Id 0"))
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(() => Text("${reactC.dataSet}")),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        reactC.tambahAngkaSet();
                      },
                      child: Text("Tambah Set")),
                  ElevatedButton(
                      onPressed: () {
                        reactC.ubahDataSet();
                      },
                      child: Text("Ubah Data Set"))
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                  child: Obx(
                () => ListTile(
                  leading: Text("${reactC.dataMap['id']}"),
                  title: Text("${reactC.dataMap['nama']}"),
                  subtitle: Text("${reactC.dataMap['umur']} Tahun"),
                ),
              )),
              ElevatedButton(
                  onPressed: () {
                    reactC.gantiNama();
                  },
                  child:Text("Ganti Nama Zira"))
            ],
          )
        ],
      ),
    );
  }
}
