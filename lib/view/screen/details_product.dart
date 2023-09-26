import 'package:ecommerce_store/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widget/details_product/app_bar_details_product.dart';
import '../widget/details_product/bottom_section_details.dart';
import '../widget/details_product/top_section_details_product.dart';

class DetailsProduct extends GetView<HomeControllerImp> {
  const DetailsProduct({super.key});
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.back();
        controller.currentPage(0);
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: const AppBarDetailsProduct(),
              ),
              SizedBox(
                height: 25.h,
              ),
              const TopSectionDetailsProduct(),
              const BottomSectionDetails(),
            ],
          ),
        ),
      ),
    );
  }
}
