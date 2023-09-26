import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/auth/button_back_title.dart';
import '../widget/password_recovery/button_continue.dart';
import '../widget/password_recovery/from_filed_password.dart';

class PasswordRecovery extends StatelessWidget {
  const PasswordRecovery({super.key});

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
                title: 'Password Recovery',
                subTitle: 'Enter your phone number to recover\nyour password',
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.w,
                  vertical: 20.h,
                ),
                child: Column(
                  children: [
                    const FromFiledPassword(),
                    SizedBox(
                      height: 50.h,
                    ),
                    const ButtonContinue(),
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
