import 'package:ecommerce_store/view/widget/category/button_max_min_price_widget.dart';
import 'package:ecommerce_store/view/widget/category/slider_price_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller.dart';
import '../../../core/constant/color_const.dart';

import 'button_gender_widget.dart';
import 'chose_color_widget.dart';
import 'end_dialog_apply.dart';

class HomeDetails extends GetView<HomeControllerImp> {
  const HomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 5.h,
        ),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 25.w,
                vertical: 5.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gender',
                    style: context.textTheme.titleLarge!.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  const ButtonGenderWidget(),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Price Rate',
                    style: context.textTheme.titleLarge!.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  const SliderPriceWidget(),
                  const ButtonMaxMinPrice(),
                  Divider(
                    color: ColorConst.secondaryColor,
                    height: 50.h,
                  ),
                  const ChoseColorWidget(),
                ],
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            const EndDialogApply(),
          ],
        ),
      ),
    );
  }
}
