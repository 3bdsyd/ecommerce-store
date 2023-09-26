import 'package:ecommerce_store/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ImageCart extends GetView<HomeControllerImp> {
  const ImageCart(this.index, {super.key});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          controller.myCategoryCart.keys.toList()[index].imageCategory,
          fit: BoxFit.fill,
          width: 140.w,
          height: double.infinity,
        ),
      ),
    );
  }
}
