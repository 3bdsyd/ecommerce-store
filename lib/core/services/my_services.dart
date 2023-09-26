import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MyServices extends GetxService {
  late GetStorage getBox;

  Future<MyServices> init() async {
    await GetStorage.init();
    getBox = GetStorage();
    getBox.remove('rankPage');
    // currentPage = GetStorage().read('rankPage');
    return this;
  }

  // void write(String key, dynamic value) {
  //   GetStorage().write(key, value);
  // }
}

initialServices() async {
  await Get.putAsync(() => MyServices().init());
}
