import 'package:ecommerce_store/core/constants/app_package.dart';

class CustomStyleButtonFacebook extends StatelessWidget {
  const CustomStyleButtonFacebook({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          AppIcon.fromFieldImageFacebook,
          width: 28.w,
          fit: BoxFit.scaleDown,
        ),
        Text(
          'Connect with Facebook',
          style: context.textTheme.labelLarge!.copyWith(
            color: AppColor.whiteColor,
          ),
        ),
        Container(),
      ],
    );
  }
}
