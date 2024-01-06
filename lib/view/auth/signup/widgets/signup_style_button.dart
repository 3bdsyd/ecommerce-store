import 'package:ecommerce_store/core/constants/app_package.dart';

class SignUpStyleButtonWidget extends StatelessWidget {
  const SignUpStyleButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(),
        Text(
          'Sign Up',
          style: context.textTheme.labelLarge!.copyWith(
            color: AppColor.whiteColor,
          ),
        ),
        SvgPicture.asset(
          AppIcon.fromFieldImageSignUp,
          width: 28.w,
          fit: BoxFit.scaleDown,
        ),
      ],
    );
  }
}
