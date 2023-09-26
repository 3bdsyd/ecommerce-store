import 'package:ecommerce_store/controller/home_controller.dart';
import 'package:ecommerce_store/view/widget/category/details_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'search_widget.dart';

class SearchDetails extends GetView<HomeControllerImp> {
  const SearchDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        children: [
          const SearchWidget(),
          const Spacer(),
          const DetailsWidget(),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
    );
  }
}
