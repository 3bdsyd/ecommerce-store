import 'package:ecommerce_store/core/constants/app_package.dart';

class SplashScreen extends GetView<SplashControllerImp> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashControllerImp>(
      builder: (_) => Scaffold(
        body: Lottie.asset(
          AppAnimation.splashAnimation,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
