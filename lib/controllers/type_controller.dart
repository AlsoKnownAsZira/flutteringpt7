import 'package:get/get.dart';

class type_controller extends GetxController {
  //Reactive Int
  RxInt dataInt = 0.obs;
  void incrementInt() => dataInt++;
  void decrementInt() => dataInt--;
  //Reactive String
  RxString dataString = "Data (Original/Resetted)".obs;
  void gantiString() {
    if (dataString.value == "Data (Original/Resetted)") {
      dataString.value = "Data (Updated)";
    } else {
      dataString.value = "Data (Original/Resetted)";
    }
  }

  //Reactive Double
  RxDouble dataDouble = 0.0.obs;
  void incrementDouble() => dataDouble.value += 0.5;
  void decrementDouble() => dataDouble.value -= 0.5;

//Reactive Bool
  RxBool dataBool = false.obs;
  void gantiBool() {
    dataBool.toggle();
  }

  //Reactive List
  RxList<int> dataList = [1, 2, 3, 4].obs;
  int angkaSelanjutnya = 5;
  void tambahAngkaList() {
    dataList.add(angkaSelanjutnya);
    angkaSelanjutnya++;
  }

  void ubahId0() {
    dataList[0] = 666;
  }

  //Reactive Set
  var dataSet = RxSet<int>({1, 2, 3});
  int setAngkaSelanjutnya = 4;
  void tambahAngkaSet() {
    dataSet.add(setAngkaSelanjutnya);
    setAngkaSelanjutnya++;
  }

//untuk ubah data set, tidak bisa mengincar index ke berapa
// harus exact set ini dirubah panjang dan value nya
  void ubahDataSet() {
    dataSet.value = {99, 2, 3};
    setAngkaSelanjutnya = 4;
  }

  //Reactive Mapping
  RxMap<String, dynamic> dataMap = <String, dynamic>{
    "id": 1,
    "nama": "Zira",
    "umur": 19,
  }.obs;

  void gantiNama() {
    if (dataMap['nama'] == "Bukan Zira") {
      dataMap['nama'] = "Zira";
    } else {
      dataMap['nama'] = "Bukan Zira";
    }
  }

  void addUmur() {
    dataMap['umur']++;
  }

  void kurangUmur() {
    if (dataMap['umur'] > 17) {
      dataMap['umur']--;
    }
  }
}
