import 'package:ecommerce_store/core/constants/app_package.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PopScope(
        canPop: false,
        onPopInvoked: (value) => alertExitApp(context),
        child: const Scaffold(
          body: OnBoardingBasicWidget(),
        ),
      ),
    );
  }
}
