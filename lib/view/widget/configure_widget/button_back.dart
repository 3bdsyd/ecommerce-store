import 'package:ecommerce_store/core/constants/app_package.dart';

class ButtonBackConfigure extends StatelessWidget {
  const ButtonBackConfigure({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: SvgPicture.asset(
          AppIcon.buttonBack,
          fit: BoxFit.scaleDown,
          width: 25.w,
          height: 25.w,
        ),
      ),
    );
  }
}
