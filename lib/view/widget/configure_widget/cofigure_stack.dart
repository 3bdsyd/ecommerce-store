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
        SvgPicture.asset(ImageConst.configureImageEllipseOne),
        SvgPicture.asset(ImageConst.configureImageEllipseTow),
        SvgPicture.asset(ImageConst.configureImageEllipseThree),
        SvgPicture.asset(
          filedScreen ?? false
              ? ImageConst.imagesShape
              : ImageConst.configureImageVector,
        ),
      ],
    );
  }
}
