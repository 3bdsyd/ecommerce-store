import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

import '../../../core/constants/app_color.dart';

class DescriptionProduct extends StatelessWidget {
  const DescriptionProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.w,
      child: ReadMoreText(
        '- Celana Jeans dengan Pola Mom Fit\n'
        '- Bahan Katun Denim Tidak Melar\n'
        '- Pinggang Elastis memakai karet\n'
        '- Nyaman dipakai',
        trimLines: 3,
        style: context.textTheme.labelMedium,
        colorClickableText: AppColor.primaryColor,
        trimMode: TrimMode.Line,
        trimCollapsedText: ' Read more',
        trimExpandedText: ' ...Read less',
      ),
    );
  }
}
