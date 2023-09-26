import 'package:ecommerce_store/data/model/test_model.dart';
import 'package:get/get.dart';

import '../core/class/status_request.dart';
import '../core/fuctions/handling_data_controller.dart';
import '../data/datasource/reomte/test_data.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find());
  List<Datum> data = [];

  late StatusRequest statusRequest = StatusRequest.none;

  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getData();
    // print("is resp: ----> $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
