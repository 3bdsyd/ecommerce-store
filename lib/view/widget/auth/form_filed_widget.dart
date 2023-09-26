import 'package:ecommerce_store/controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';

// ignore: must_be_immutable
class FormFieldWidget extends StatelessWidget {
  FormFieldWidget({
    super.key,
    required this.signUp,
    required this.labelText,
    required this.hinText,
    required this.imagePrefix,
    this.imageSuffix,
    this.obscureText,
    required this.validator,
    required this.controller,
  });
  final bool signUp;
  final String labelText;
  final String hinText;
  final String imagePrefix;
  late String? imageSuffix;
  late bool? obscureText;
  final Function(String value) validator;
  final TextEditingController controller;
  final SignUpControllerImp signUpController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Text(
              labelText,
              style: context.textTheme.labelMedium!.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 10,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5.h,
        ),
        TextFormField(
          controller: controller,
          validator: (value) => validator(value!),
          cursorWidth: 1,
          cursorColor: ColorConst.thirdColor,
          style: context.textTheme.labelLarge!.copyWith(
            color: ColorConst.thirdColor,
          ),
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            // floatingLabelBehavior: FloatingLabelBehavior.always,
            // label: Text('always top text field'),
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                width: .5.w,
                color: ColorConst.thirdColor,
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                width: .5.w,
                color: ColorConst.thirdColor,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                width: .5.w,
                color: ColorConst.thirdColor,
              ),
            ),
            hintText: hinText,
            hintStyle: context.textTheme.labelLarge!.copyWith(
              color: ColorConst.thirdColor.withOpacity(.3),
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(10),
              child: SvgPicture.asset(
                imagePrefix,
              ),
            ),
            suffixIcon: imageSuffix != null
                ? GestureDetector(
                    onTap: signUpController.changeObscureText,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset(
                        imageSuffix!,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  )
                : null,
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
      ],
    );
  }
}
