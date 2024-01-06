import 'package:ecommerce_store/core/class/platform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controller/home_controller.dart';
import '../../core/constants/app_color.dart';
import '../widget/cart/check_payment.dart';
import '../widget/cart/details_order.dart';
import '../widget/cart/get_view_cart.dart';
import '../widget/cart/map_address.dart';
import '../widget/favorite/title_widget.dart';

class Cart extends GetView<HomeControllerImp> {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeHeight = Platform.getSizeHeight(context);
    return Obx(
      () => controller.isCheckMap.value
          ? const MapAddress()
          : controller.isCheckPayment.value
              ? const CheckPayment()
              : Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Obx(
                    () => ListView(
                      children: [
                        SizedBox(
                          height: 12.h,
                        ),
                        const TitleWidget(favoriteScreen: false),
                        SizedBox(
                          height: 25.h,
                        ),
                        SizedBox(
                          height: sizeHeight / 2.5,
                          child: controller.myCategoryCart.isNotEmpty
                              ? const GetViewCart()
                              : Container(),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Divider(
                          color: AppColor.thirdColor,
                          indent: 20.w,
                          endIndent: 20.w,
                        ),
                        const DetailsOrder(),
                      ],
                    ),
                  ),
                ),
    );
  }
}
