import 'package:ecommerce_store/view/widget/on_boarding/button_started.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controller/on_boarding_controller.dart';
import '../../core/constant/color_const.dart';
import '../../data/datasource/static/static.dart';
import '../widget/on_boarding/logo_title.dart';
import '../widget/on_boarding/slider_body_text.dart';

class OnBoarding extends GetView<OnBoardingControllerImp> {
  const OnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConst.fifthColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: controller.pageController,
                  onPageChanged: (value) {
                    controller.onChangeOnBoardingPag(value);
                  },
                  itemCount: onBoardingList.length,
                  itemBuilder: (BuildContext context, _) {
                    return const Column(
                      children: [
                        LogoTitle(),
                        Expanded(
                          child: SliderBodyText(),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const Expanded(
                flex: 1,
                child: ButtonStarted(),
              ),
              SizedBox(
                height: 5.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}

