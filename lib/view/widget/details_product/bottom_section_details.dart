import 'package:ecommerce_store/view/widget/details_product/store_guarantee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_color.dart';
import 'button_add_product.dart';
import 'description_product.dart';
import 'details_colors_product.dart';
import 'name_des_price_product.dart';

class BottomSectionDetails extends StatelessWidget {
  const BottomSectionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const NameDesPriceProduct(),
          SizedBox(
            height: 8.h,
          ),
          Text(
            'COLOR',
            style: context.textTheme.titleLarge!.copyWith(fontSize: 18),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DetailsColorsProduct(),
                Spacer(),
                ButtonAddProduct(),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            'DESCRIPTION',
            style: context.textTheme.titleLarge!.copyWith(fontSize: 18),
          ),
          const DescriptionProduct(),
          Divider(
            color: AppColor.thirdColor,
            height: 20.h,
          ),
          const StoreGuarantee(),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
