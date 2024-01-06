import 'package:ecommerce_store/core/constants/app_package.dart';

class SignUpTermsWidget extends StatelessWidget {
  const SignUpTermsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          const SignUpCheckBoxWidget(),
          Expanded(
            child: RichText(
              text: TextSpan(
                text: 'By creating an account, you agree to our\n',
                style: context.textTheme.labelMedium,
                children: [
                  TextSpan(
                    text: 'Term & Conditions',
                    style: context.textTheme.labelMedium!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
