import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constant/color_const.dart';
import '../../../core/constant/image_const.dart';

// ignore: must_be_immutable
class FormFieldInformation extends StatelessWidget {
  const FormFieldInformation({
    super.key,
    required this.hintText,
    required this.number,
    required this.mapIcon,
  });
  final String hintText;
  final bool number;
  final bool mapIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: TextFormField(
            enabled: !mapIcon,
            cursorWidth: 1,
            cursorColor: ColorConst.thirdColor,
            style: number
                ? context.textTheme.labelLarge!.copyWith(
                    color: ColorConst.thirdColor,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  )
                : context.textTheme.labelLarge!.copyWith(
                    color: ColorConst.thirdColor,
                  ),
            keyboardType: number ? TextInputType.number : TextInputType.text,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: context.textTheme.labelLarge!
                  .copyWith(color: ColorConst.thirdColor, fontSize: 15),
              contentPadding: EdgeInsets.only(
                top: 10.h,
                bottom: 10.h,
                left: 0.h,
                right: 15.h,
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: .5.w,
                  color: ColorConst.thirdColor.withOpacity(.5),
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: .5.w,
                  color: ColorConst.thirdColor.withOpacity(.5),
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  width: .5.w,
                  color: ColorConst.thirdColor.withOpacity(.5),
                ),
              ),
              prefixIcon: number
                  ? Padding(
                      padding: EdgeInsets.only(
                        right: 20.h,
                        left: 0.h,
                        bottom: 10.h,
                        top: 10.h,
                      ),
                      child: Text(
                        '+963',
                        style: context.textTheme.labelMedium!
                            .copyWith(fontSize: 15),
                      ),
                    )
                  : null,
              suffixIcon: (number || mapIcon)
                  ? Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      number
                          ? ImageConst.fromFieldImagePasswordRecovery
                          : ImageConst.imageMovingIn,
                      fit: BoxFit.scaleDown,
                    ),
                  )
                  : Container(width: 0),
            ),
          ),
        ),
        const Spacer()
      ],
    );
  }
}
