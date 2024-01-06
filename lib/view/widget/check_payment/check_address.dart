import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller.dart';
import '../../../core/constants/app_color.dart';
import '../information_auth/form_field_information.dart';

class CheckAddress extends GetView<HomeControllerImp> {
  const CheckAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Text(
            'Check your address',
            style: context.textTheme.titleLarge,
          ),
          SizedBox(
            height: 10.h,
          ),
          const FormFieldInformation(
            hintText: 'Ranim',
            number: false,
            mapIcon: false,
          ),
          SizedBox(
            height: 15.h,
          ),
          const FormFieldInformation(
            hintText: 'Omar',
            number: false,
            mapIcon: false,
          ),
          SizedBox(
            height: 15.h,
          ),
          const FormFieldInformation(
            hintText: 'Syria',
            number: false,
            mapIcon: false,
          ),
          SizedBox(
            height: 15.h,
          ),
          const FormFieldInformation(
            hintText: 'Damascus',
            number: false,
            mapIcon: false,
          ),
          SizedBox(
            height: 15.h,
          ),
          GestureDetector(
            onTap: () {
              controller.changeStateMap(true);
            },
            child: const FormFieldInformation(
              hintText: 'Select City on Map',
              number: false,
              mapIcon: true,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          const FormFieldInformation(
            hintText: '997555668',
            number: true,
            mapIcon: false,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 30.h,
                  width: 80.w,
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
                ),
                Container(
                  alignment: Alignment.center,
                  height: 30.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.fromBorderSide(
                      BorderSide(color: AppColor.primaryColor),
                    ),
                  ),
                  child: Text(
                    'Update',
                    style: context.textTheme.bodySmall!.copyWith(fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 35.h,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // controller.nextPagePayment();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Check Out',
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.labelLarge!.copyWith(fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
