import 'package:ecommerce_store/controller/on_boarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_utils/get_utils.dart';

import '../../../core/class/platform.dart';
import '../../../core/constant/color_const.dart';
import '../../../data/datasource/static/static.dart';

class SliderBodyText extends GetView<OnBoardingControllerImp> {
  const SliderBodyText({super.key});

  @override
  Widget build(BuildContext context) {
    final int index = controller.currentPage;
    final double sizeWidth = Platform.getSizeWidth(context);
    return Column(
      children: [
        sizeWidth < 500
            ? Expanded(
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          boxShadow: [
                            BoxShadow(
                              color: ColorConst.secondaryColor.withOpacity(.3),
                              blurRadius: 5,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(200),
                            topRight: Radius.circular(200),
                          ),
                          child: Image.asset(
                            onBoardingList[index].bodyImageTow,
                            width: 200.w,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          boxShadow: [
                            BoxShadow(
                              color: ColorConst.secondaryColor.withOpacity(.3),
                              blurRadius: 5,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(200),
                            bottomRight: Radius.circular(200),
                          ),
                          child: Image.asset(
                            onBoardingList[index].bodyImageOne,
                            width: 200.w,
                            // height: 250.h,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Container(
                width: 0,
              ),
        SizedBox(
          height: 5.h,
        ),
        sizeWidth < 500 ? Container(width: 0) : const Spacer(),
        Text(
          onBoardingList[index].bodyText,
          style: context.textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
