import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../core/constants/app_color.dart';
import '../widget/orders_history/title_back.dart';

class AboutStore extends StatelessWidget {
  const AboutStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Column(
        children: [
          SizedBox(
            height: 12.h,
          ),
          TitleBack(
            title: 'Mari Bosa',
            aboutScreen: true,
          ),
          SizedBox(
            height: 50.h,
          ),
          Text(
            'Mari Bosa is part of the Global Fashion Group, the world\'s leading fashion group.'
            ' Founded in 2020 and dedicated to creating online fashion companies in developing '
            'countries. To date, Global Fashion Group operates in 27 countries. Global Fashion '
            'Group has a presence in Indonesia, South East, South America and Europe. Through '
            'MARI BOSA, Global Fashion Group is able to access markets in Southeast Asia, while '
            'MARI BOSA is trying to become a fashion destination in Southeast Asia.',
            textAlign: TextAlign.center,
            style: context.textTheme.labelLarge!.copyWith(
              color: AppColor.thirdColor,
            ),
          )
        ],
      ),
    );
  }
}
