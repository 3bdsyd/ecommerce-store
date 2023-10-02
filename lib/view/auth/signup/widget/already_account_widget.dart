import 'package:ecommerce_store/core/constant/package_const.dart';

class AlreadyAccountWidget extends StatelessWidget {
  const AlreadyAccountWidget({super.key});

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
          onTap: () => Get.offNamed(
            ScreenNames.signInScreen,
          ),
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
