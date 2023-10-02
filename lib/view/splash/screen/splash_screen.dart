import 'package:ecommerce_store/core/constant/package_const.dart';

class SplashScreen extends GetView<SplashControllerImp> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashControllerImp>(
      builder: (_) => Scaffold(
        body: Lottie.asset(
          AnimationConst.splashAnimation,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
