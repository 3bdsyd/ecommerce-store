import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/auth/button_back_title.dart';
import '../widget/information_auth/form_field_information.dart';
import '../widget/information_auth/show_note.dart';
import '../widget/otp_Authentication/button_verifye.dart';

class InformationAuth extends StatelessWidget {
  const InformationAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: ListView(
            children: [
              SizedBox(
                height: 12.h,
              ),
              const ButtonBack(
                title: 'Enter the delivery\naddress ',
                subTitle: '',
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FormFieldInformation(
                    hintText: 'First name',
                    number: false,
                    mapIcon: false,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  const FormFieldInformation(
                    hintText: 'Last name',
                    number: false,
                    mapIcon: false,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  const FormFieldInformation(
                    hintText: 'Address',
                    number: false,
                    mapIcon: false,
                  ),
                  SizedBox(height: 15.h),
                  const FormFieldInformation(
                    hintText: 'City',
                    number: false,
                    mapIcon: false,
                  ),
                  SizedBox(height: 15.h),
                  const FormFieldInformation(
                    hintText: '',
                    number: true,
                    mapIcon: false,
                  ),
                  SizedBox(height: 30.h),
                  const ShowNote(),
                  SizedBox(height: 25.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: const ButtonVerifye(verifye: false),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
            ],
          ),
        ),
      ),
    );
  }
}
