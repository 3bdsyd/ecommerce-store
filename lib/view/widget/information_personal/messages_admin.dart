import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';
import '../../../data/datasource/static/static.dart';

class MessagesAdmin extends StatelessWidget {
  const MessagesAdmin({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Image.asset(ImageConst.imagesContact),
        ),
        SizedBox(
          width: 5.w,
        ),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'Admin',
                    style: context.textTheme.labelMedium!.copyWith(
                      color: ColorConst.thirdColor.withOpacity(.6),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 10.h,
                ),
                decoration: BoxDecoration(
                  color: ColorConst.eleventhColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Text(
                  chatList[index].message,
                  style: context.textTheme.labelLarge!.copyWith(
                    color: ColorConst.thirdColor,
                    letterSpacing: .4,
                    wordSpacing: .5,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
