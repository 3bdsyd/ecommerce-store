import 'package:ecommerce_store/controller/home_controller.dart';
import 'package:ecommerce_store/core/constant/icon_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';
import 'details_category.dart';

class CardCategory extends GetView<HomeControllerImp> {
  const CardCategory(
      {super.key, required this.isPageFavorite, required this.index});
  final bool isPageFavorite;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorConst.whiteColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              isPageFavorite
                  ? controller.myCategoriesFavorite[index].imageCategory
                  : controller.myCategoryList[index].imageCategory,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                DetailsCategory(
                  index: index,
                  isPageFavorite: isPageFavorite,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        '\$${isPageFavorite ? controller.myCategoriesFavorite[index].priceCategory : controller.myCategoryList[index].priceCategory}',
                        style: context.textTheme.labelSmall!.copyWith(
                          color: ColorConst.secondaryColor,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SvgPicture.asset(
                      IconConst.onBoardingStart,
                      width: 15.w,
                      height: 15.h,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
