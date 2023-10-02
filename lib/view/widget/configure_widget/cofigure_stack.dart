import 'package:ecommerce_store/core/constant/icon_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constant/image_const.dart';

// ignore: must_be_immutable
class ConfigureStack extends StatelessWidget {
  ConfigureStack({super.key, this.filedScreen});
  late bool? filedScreen;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset(IconConst.configureImageEllipseOne),
        SvgPicture.asset(IconConst.configureImageEllipseTow),
        SvgPicture.asset(IconConst.configureImageEllipseThree),
        SvgPicture.asset(
          filedScreen ?? false
              ? IconConst.imagesShape
              : IconConst.configureImageVector,
        ),
      ],
    );
  }
}
