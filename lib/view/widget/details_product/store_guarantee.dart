import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/image_const.dart';

class StoreGuarantee extends StatelessWidget {
  const StoreGuarantee({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(ImageConst.imagesCheckLine),
            SizedBox(
              width: 3.w,
            ),
            Text(
              'Original product',
              style: context.textTheme.labelMedium,
            ),
            const Spacer(),
            SvgPicture.asset(ImageConst.imagesHistoryLine),
            SizedBox(
              width: 3.w,
            ),
            Text(
              'Return of goods in 5 days',
              style: context.textTheme.labelMedium,
            )
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        Row(
          children: [
            SvgPicture.asset(ImageConst.imagesPriceLine),
            SizedBox(
              width: 3.w,
            ),
            Text(
              'Voucher code available',
              style: context.textTheme.labelMedium,
            ),
            const Spacer(),
            SvgPicture.asset(ImageConst.imagesWalletLine),
            SizedBox(
              width: 3.w,
            ),
            Text(
              'Pay directly at your place',
              style: context.textTheme.labelMedium,
            )
          ],
        ),
      ],
    );
  }
}
