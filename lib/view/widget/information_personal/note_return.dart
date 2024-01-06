import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_color.dart';

class NoteReturn extends StatelessWidget {
  const NoteReturn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220.w,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: 'Note:  ',
              style: context.textTheme.labelSmall!.copyWith(
                fontSize: 15,
                color: AppColor.primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text:
                  'We aren’t able to offer policy exception or special handling in response to comments entered on this page.',
              style: context.textTheme.bodySmall!.copyWith(
                color: AppColor.thirdColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
