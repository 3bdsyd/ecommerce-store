import 'package:ecommerce_store/core/constants/app_package.dart';

class SignUpLableAlreadyAccountWidget extends StatelessWidget {
  const SignUpLableAlreadyAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account? ',
          style: context.textTheme.labelMedium,
        ),
        GestureDetector(
          onTap: () => Get.offNamed(AppNameScreen.signInScreen),
          child: Text(
            'Sign in',
            style: context.textTheme.labelMedium!.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
