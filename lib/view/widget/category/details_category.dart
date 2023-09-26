import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller.dart';
import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';

class DetailsCategory extends GetView<HomeControllerImp> {
  const DetailsCategory({
    super.key,
    required this.index,
    required this.isPageFavorite,
  });
  final bool isPageFavorite;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                isPageFavorite
                    ? controller.myCategoriesFavorite[index].nameCategory
                    : controller.myCategoryList[index].nameCategory,
                style: context.textTheme.labelSmall,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                isPageFavorite
                    ? controller.myCategoriesFavorite[index].discretionCategory
                    : controller.myCategoryList[index].discretionCategory,
                style: context.textTheme.labelSmall!
                    .copyWith(color: ColorConst.eighthColor, fontSize: 11),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        const Spacer(),
        Expanded(
          child: Obx(
            () => GestureDetector(
              onTap: () {
                controller.addItemsToFavorite(
                  isPageFavorite
                      ? controller.myCategoriesFavorite[index].id
                      : controller.myCategoryList[index].id,
                );
              },
              child: controller.isAddedProduct(
                isPageFavorite
                    ? controller.myCategoriesFavorite[index].id
                    : controller.myCategoryList[index].id,
              )
                  ? SvgPicture.asset(
                      ImageConst.imageFavoriteTow,
                      width: 20.w,
                      height: 20.h,
                    )
                  : SvgPicture.asset(
                      ImageConst.imageVectorLove,
                      width: 20.w,
                      height: 20.h,
                      colorFilter: ColorFilter.mode(
                        ColorConst.secondaryColor,
                        BlendMode.srcIn,
                      ),
                    ),
            ),
          ),
        )
      ],
    );
  }
}
