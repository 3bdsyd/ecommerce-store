import 'package:ecommerce_store/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageBuilderPayment extends GetView<HomeControllerImp> {
  const PageBuilderPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(
        () => PageView.builder(
          // physics: const NeverScrollableScrollPhysics(),
          controller: controller.pageControllerPayment,
          allowImplicitScrolling: true,
          onPageChanged: (value) {
            controller.changePagePayment(value);
          },
          itemCount: controller.pageBuilderPayment.length,
          itemBuilder: (BuildContext context, int index) => Column(
            children: [
              controller.pageBuilderPayment[index],
            ],
          ),
        ),
      ),
    );
  }
}
