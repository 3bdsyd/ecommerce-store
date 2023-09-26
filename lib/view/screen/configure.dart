import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widget/configure_widget/button_back.dart';
import '../widget/configure_widget/button_done.dart';
import '../widget/configure_widget/cofigure_stack.dart';

class Configure extends StatelessWidget {
  const Configure({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                const ButtonBackConfigure(),
                const Spacer(
                  flex: 3,
                ),
                ConfigureStack(),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Phone Verified',
                  style: context.textTheme.titleLarge,
                ),
                Text(
                  'Configure Successfully',
                  style: context.textTheme.bodySmall,
                ),
                const Spacer(
                  flex: 5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: const ButtonDone(),
                ),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
