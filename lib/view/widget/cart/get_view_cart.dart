import 'package:ecommerce_store/view/widget/cart/image_cart.dart';
import 'package:ecommerce_store/view/widget/cart/right_Cart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller.dart';
import '../../../core/class/platform.dart';
import '../../../core/constants/app_color.dart';
import 'center_cart_widget.dart';

class GetViewCart extends GetView<HomeControllerImp> {
  const GetViewCart({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeWidth = Platform.getSizeWidth(context);
    return Obx(
      () => GridView.builder(
        itemCount: controller.myCategoryCart.length,
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: numberOfCardsInLine(sizeWidth),
          childAspectRatio: sizeOfCardsInLine(sizeWidth),
        ),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: .2,
            color: AppColor.nineColor,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 10.h,
              ),
              child: Row(
                children: [
                  ImageCart(index),
                  SizedBox(
                    width: 5.w,
                  ),
                  CenterCartWidget(index),
                  const Spacer(),
                  RightCartWidget(index),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  int numberOfCardsInLine(sizeWidth) {
    return sizeWidth < 600
        ? 1
        : sizeWidth < 1000
            ? 2
            : 3;
  }

  double sizeOfCardsInLine(sizeWidth) {
    return sizeWidth < 300
        ? 2
        : sizeWidth < 600
            ? 2.4
            : sizeWidth < 1000
                ? 2
                : 1.6;
  }
}
