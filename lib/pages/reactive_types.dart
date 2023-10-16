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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Obx(() => Text("${reactC.dataList}")),
                SizedBox(
                  width: 20,
                ),
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
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Obx(() => Text("${reactC.dataSet}")),
                SizedBox(
                  width: 20,
                ),
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
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  child: Obx(
                () => ListTile(
                  leading: Text("${reactC.dataMap['id']}"),
                  title: Text("${reactC.dataMap['nama']}"),
                  subtitle: Text("${reactC.dataMap['umur']} Tahun"),
                ),
              )),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        reactC.gantiNama();
                      },
                      child: Text("Ganti Nama Zira")),
                  Column(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            reactC.addUmur();
                          },
                          child: Text("Tambah Umur")),
                      ElevatedButton(
                          onPressed: () {
                            reactC.kurangUmur();
                          },
                          child: Text("Kurang Umur")),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
