import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controller/home_controller.dart';
import '../widget/home/button_bar.dart';

class Home extends GetView<HomeControllerImp> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          child: const ButtonNavBar(),
        ),
        body: Obx(
          () => IndexedStack(
            // index: 4,
            index: controller.currentPage.value,
            children: controller.pagesHomeList,
          ),
        ),
      ),
    );
  }
}
