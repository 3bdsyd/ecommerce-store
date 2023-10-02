import 'package:ecommerce_store/core/constant/icon_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';

class SenderMessages extends StatelessWidget {
  const SenderMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Divider(
            color: ColorConst.thirdColor,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Row(
            children: [
              SvgPicture.asset(IconConst.imagesVoctorChat),
              SizedBox(
                width: 8.w,
              ),
              Expanded(
                child: TextField(
                  style: context.textTheme.labelLarge!.copyWith(
                    color: ColorConst.thirdColor,
                  ),
                  decoration: InputDecoration(
                    hintText: 'iMessage',
                    hintStyle: context.textTheme.labelLarge!.copyWith(
                      color: ColorConst.thirdColor.withOpacity(.3),
                    ),
                    contentPadding: const EdgeInsets.only(
                        left: 15, right: 15, top: 10, bottom: 10),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset(
                        IconConst.imagesSendIcon,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          BorderSide(color: Colors.grey.withOpacity(.5)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          BorderSide(color: Colors.grey.withOpacity(.5)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          BorderSide(color: Colors.grey.withOpacity(.5)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              SvgPicture.asset(IconConst.imagesVectorChatTow),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
