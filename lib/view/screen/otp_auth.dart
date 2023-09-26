import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widget/auth/button_back_title.dart';
import '../widget/otp_Authentication/button_verifye.dart';
import '../widget/otp_Authentication/otp_form_field.dart';

class OTPAuth extends StatelessWidget {
  const OTPAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: ListView(
            children: [
              SizedBox(
                height: 10.h,
              ),
              const ButtonBack(
                title: 'OTP Authentication',
                subTitle:
                    'An authentication code has been\nsent to (+963) 99555668',
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.w,
                  vertical: 20.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const OTPFormField(),
                    SizedBox(
                      height: 15.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text(
                            'Didn\'t receive the SMS?',
                            style: context.textTheme.bodySmall!
                                .copyWith(fontSize: 13,),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            'Request New Code in 05:00',
                            style: context.textTheme.labelMedium!.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    const ButtonVerifye(
                      verifye: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
