import 'package:ecommerce_store/core/constants/app_package.dart';

class CustomStyleButtonGoogle extends StatelessWidget {
  const CustomStyleButtonGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          AppIcon.googleLogo,
          width: 28.w,
          fit: BoxFit.scaleDown,
        ),
        Text(
          'Connect with Google',
          style: context.textTheme.labelLarge!.copyWith(
            color: AppColor.darkColor,
          ),
        ),
        Container(),
      ],
    );
  }
}
