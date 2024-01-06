import 'package:ecommerce_store/core/constants/app_package.dart';

// ignore: must_be_immutable
class ConfigureStack extends StatelessWidget {
  ConfigureStack({super.key, this.filedScreen});
  late bool? filedScreen;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset(AppIcon.configureImageEllipseOne),
        SvgPicture.asset(AppIcon.configureImageEllipseTow),
        SvgPicture.asset(AppIcon.configureImageEllipseThree),
        SvgPicture.asset(
          filedScreen ?? false
              ? AppIcon.imagesShape
              : AppIcon.configureImageVector,
        ),
      ],
    );
  }
}
