import 'package:ecommerce_store/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InformationPersonal extends GetView<HomeControllerImp> {
  const InformationPersonal({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => IndexedStack(
        index: controller.currentPageInformation.value,
        children: controller.pagesInformationList,
      ),
    );
  }
}
