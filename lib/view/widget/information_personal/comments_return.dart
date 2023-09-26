import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';

class CommentsReturn extends StatelessWidget {
  const CommentsReturn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: 220.w,
      child: TextField(
        cursorColor: ColorConst.thirdColor,
        textAlignVertical: TextAlignVertical.top,
        maxLines: null,
        expands: true,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10.w,
            vertical: 6.h,
          ),
          hintText: 'Your comments here',
          hintStyle: context.textTheme.bodySmall!.copyWith(fontSize: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: ColorConst.primaryColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: ColorConst.primaryColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: ColorConst.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
