import 'package:ecommerce_store/core/constant/color_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/class/platform.dart';
import '../../../core/constant/image_const.dart';

class StackImage extends StatelessWidget {
  const StackImage({super.key});

  @override
  Widget build(BuildContext context) {
    final double sizeWidth = Platform.getSizeWidth(context);
    return Stack(
      children: [
        Container(
          height: 150.h,
          width: sizeWidth,
          color: ColorConst.secondaryColor,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: ClipPath(
            clipper: CustomClipperContainer(),
            child: Container(
              width: sizeWidth,
              height: 150.h,
              color: ColorConst.primaryColor,
            ),
          ),
        ),
        Positioned(
          height: 177.h,
          width: sizeWidth * 1.1,
          bottom: -13.h,
          left: -25.w,
          child: Image.asset(
            ImageConst.imageRectangle189,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          right: 0,
          top: 25.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: sizeWidth * .45,
                child: Text(
                  'Discount of all types of accessories',
                  style: context.textTheme.labelLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 28.h,
                    width: sizeWidth * .29,
                    color: ColorConst.secondaryColor,
                    child: Text(
                      'Up to 30 %',
                      style: context.textTheme.labelLarge!
                          .copyWith(fontWeight: FontWeight.w800),
                    ),
                  ),
                  Image.asset(
                    ImageConst.imageRectangle184,
                    height: 50.h,
                    width: sizeWidth * .16,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              SizedBox(
                width: sizeWidth * .45,
                child: Text(
                  'only on the night sale 10-13 october',
                  style: context.textTheme.labelLarge!.copyWith(fontSize: 11),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomClipperContainer extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width * .6, 0);
    path.lineTo(size.width * .3, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
