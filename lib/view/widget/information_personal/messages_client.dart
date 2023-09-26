import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';
import '../../../data/datasource/static/static.dart';

class MessagesClient extends StatelessWidget {
  const MessagesClient({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Spacer(),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 10.h,
                ),
                decoration: BoxDecoration(
                  color: ColorConst.twelfthColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Text(
                  chatList[index].message,
                  style: context.textTheme.labelLarge!.copyWith(
                    letterSpacing: .4,
                    wordSpacing: .5,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
