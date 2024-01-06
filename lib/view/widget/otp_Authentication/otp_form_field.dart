import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constants/app_color.dart';

class OTPFormField extends StatelessWidget {
  const OTPFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(4, (index) {
          return Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                autofocus: true,
                cursorWidth: 1,
                cursorColor: AppColor.thirdColor,
                style: context.textTheme.labelLarge!.copyWith(
                  color: AppColor.thirdColor,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.w,
                      color: AppColor.thirdColor.withOpacity(.3),
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.w,
                      color: AppColor.thirdColor.withOpacity(.3),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 2.w,
                      color: AppColor.thirdColor.withOpacity(.3),
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ],
    );
  }
}
