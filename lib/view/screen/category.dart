import 'package:ecommerce_store/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../core/class/platform.dart';
import '../widget/category/get_view_categories.dart';
import '../widget/category/profile.dart';
import '../widget/category/search_details.dart';
import '../widget/category/stack_image.dart';
import '../widget/category/type_items.dart';

class CategoryHome extends StatelessWidget {
  const CategoryHome({super.key});

  @override
  Widget build(BuildContext context) {
    final double sizeHeight = Platform.getSizeHeight(context);
    // final orientation = Platform.getOrientation(context);

    return ListView(
      children: [
        const Profile(),
        const SearchDetails(),
        SizedBox(height: 10.h),
        const StackImage(),
        const TypeItems(),
        SizedBox(
          height: sizeHeight / 2,
          child: const GetViewCategory(
            isPageFavorite: false,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              'See more',
              style: context.textTheme.labelSmall!.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColor.thirdColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
