import 'package:ecommerce_store/router/binding/home_binding.dart';
import 'package:ecommerce_store/router/binding/signin_binding.dart';
import 'package:ecommerce_store/router/binding/signup_binding.dart';
import 'package:ecommerce_store/view/screen/sign_in.dart';
import 'package:ecommerce_store/view/screen/splash_screen.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../view/screen/configure.dart';

import '../view/screen/details_product.dart';
import '../view/screen/home.dart';
import '../view/screen/information_auth.dart';

import '../view/screen/order_complete.dart';
import '../view/screen/order_failed.dart';
import '../view/screen/otp_auth.dart';
import '../view/screen/password_recovery.dart';
import '../view/screen/sign_up.dart';
import '../view/screen/on_boarding.dart';
import 'binding/auth_binding.dart';
import 'binding/on_boarding_binding.dart';

class Routes {
  static final List<GetPage<dynamic>> getPages = [
    GetPage(
      name: ScreenNames.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: ScreenNames.onBoardingScreen,
      page: () => OnBoarding(),
      binding: OnBoardingBinding(),
      // middlewares: [
      //   MyMiddleWare(),
      // ],
    ),
    GetPage(
      name: ScreenNames.signUpScreen,
      page: () => const SignUp(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: ScreenNames.signInScreen,
      page: () => const SignIn(),
      bindings: [
        AuthBinding(),
        SignInBinding(),
      ],
    ),
    GetPage(
      name: ScreenNames.passwordRecovery,
      page: () => const PasswordRecovery(),
      bindings: [
        AuthBinding(),
        SignInBinding(),
      ],
    ),
    GetPage(
      name: ScreenNames.otpAuth,
      page: () => const OTPAuth(),
      bindings: [
        AuthBinding(),
        SignInBinding(),
      ],
    ),
    GetPage(
      name: ScreenNames.informationAuth,
      page: () => const InformationAuth(),
      bindings: [
        AuthBinding(),
        SignInBinding(),
      ],
    ),
    GetPage(
      name: ScreenNames.configure,
      page: () => const Configure(),
      bindings: [
        AuthBinding(),
        SignInBinding(),
      ],
    ),
    GetPage(
      name: ScreenNames.home,
      page: () => const Home(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: ScreenNames.orderComplete,
      page: () => const OrderComplete(),
    ),
    GetPage(
      name: ScreenNames.orderFailed,
      page: () => const OrderFailed(),
    ),
    GetPage(
      name: ScreenNames.detailsProduct,
      page: () => const DetailsProduct(),
      binding: HomeBinding(),
    ),
  ];
}

class ScreenNames {
  static const splashScreen = '/';
  static const onBoardingScreen = '/onBoarding';
  static const signUpScreen = '/SignUp';
  static const signInScreen = '/SignIn';
  static const passwordRecovery = '/PasswordRecovery';
  static const otpAuth = '/OTPAuth';
  static const informationAuth = '/InformationAuth';
  static const configure = '/Configure';
  static const home = '/Home';
  static const orderComplete = '/OrderComplete';
  static const orderFailed = '/OrderFailed';
  static const detailsProduct = '/DetailsProduct';
}
