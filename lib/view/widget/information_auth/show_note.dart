import 'package:ecommerce_store/controller/auth/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_color.dart';

class ShowNote extends StatelessWidget {
  const ShowNote({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthControllerImp>(
      init: AuthControllerImp(),
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            controller.show
                ? GestureDetector(
                    onTap: () {
                      controller.showNote();
                    },
                    child: buttonAddNote(context),
                  )
                : textAreaNote(context)
          ],
        );
      },
    );
  }

  Widget buttonAddNote(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 75.h),
      alignment: Alignment.center,
      width: 100.w,
      height: 38.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.fromBorderSide(
          BorderSide(color: AppColor.primaryColor),
        ),
      ),
      child: Text(
        'Add a note',
        style: context.textTheme.bodySmall!.copyWith(fontSize: 14),
      ),
    );
  }

  Widget textAreaNote(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: TextField(
            cursorColor: AppColor.thirdColor,
            textAlignVertical: TextAlignVertical.top,
            maxLines: null,
            expands: true,
            decoration: InputDecoration(
              hintText: 'Add a note here',
              hintStyle: context.textTheme.bodySmall!.copyWith(fontSize: 14),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: AppColor.primaryColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: AppColor.primaryColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                  color: AppColor.primaryColor,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            alignment: Alignment.center,
            width: 70.w,
            height: 25.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColor.thirdColor,
            ),
            child: Text(
              'Add note',
              style: context.textTheme.bodySmall!.copyWith(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
