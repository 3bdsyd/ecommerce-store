import 'package:ecommerce_store/core/constants/app_package.dart';

class OnBoardingBasicWidget extends StatelessWidget {
  const OnBoardingBasicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: const Column(
        children: [
          OnBoardingPageViewWidget(),
          OnBoardingButtonWidget(),
        ],
      ),
    );
  }
}
