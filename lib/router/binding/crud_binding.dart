import 'package:ecommerce_store/core/class/crud.dart';
import 'package:get/get.dart';

class CrudBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Crud());
  }
}
