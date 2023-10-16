import 'package:get/get.dart';

class worker_controller extends GetxController {
  RxInt datapantau = 0.obs;
  void change() => datapantau++;
  @override
  void onInit() {
    // TODO: implement onInit
    //ever(datapantau, (callback) => print("Terjadi perubahan"));
    // once(datapantau, (callback) => print("Terjadi 1x"));
    //debounce(datapantau, (callback) => print("Print setelah stop typing 3 detik"), time: Duration(seconds: 3));
    interval(datapantau,
        (callback) => print("Print selama ada perubahan setiap 3 detik sekali"),
        time: Duration(seconds: 3));

    super.onInit();
  }
}
