import 'package:ecommerce_store/core/constants/app_package.dart';

class SignUpTitleWidget extends StatelessWidget {
  const SignUpTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Getting Started',
          style: context.textTheme.titleLarge,
        ),
        Text(
          ' Create an account to continue !',
          style: context.textTheme.bodySmall,
        ),
      ],
    );
  }
}
