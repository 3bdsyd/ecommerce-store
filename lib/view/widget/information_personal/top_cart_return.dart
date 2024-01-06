import 'package:ecommerce_store/core/constants/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_color.dart';
import 'button_return_back.dart';

class TopCartReturn extends StatelessWidget {
  const TopCartReturn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              AppImage.imageCategoryFive,
              height: 100.h,
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(width: 5.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bags',
                style: context.textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                'Antelope',
                style: context.textTheme.bodySmall!.copyWith(
                  color: AppColor.thirdColor,
                  fontSize: 15,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Shipped: Aug 19,2023',
                style: context.textTheme.bodySmall!.copyWith(
                  color: AppColor.thirdColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'Quantity to return: 1',
                style: context.textTheme.bodySmall!.copyWith(
                  color: AppColor.thirdColor,
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ),
        const ButtonReturnBack()
      ],
    );
  }
}
