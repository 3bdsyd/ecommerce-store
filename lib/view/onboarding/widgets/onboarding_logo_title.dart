import 'package:ecommerce_store/core/constants/app_package.dart';

class OnBoardingLogoTitleWidget extends StatelessWidget {
  const OnBoardingLogoTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80.h,
          width: 80.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: AppColor.primaryColor.withOpacity(.2),
                blurRadius: 20,
                spreadRadius: -20,
              ),
            ],
          ),
          child: Image.asset(
            AppImage.myLogo,
          ),
        ),
        Text(
          'Oncho',
          style: context.textTheme.titleSmall!.copyWith(
            color: AppColor.darkColor,
          ),
        ),
      ],
    );
  }
}
