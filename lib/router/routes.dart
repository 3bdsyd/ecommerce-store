import 'package:ecommerce_store/core/constant/package_const.dart';

class Routes {
  static final List<GetPage<dynamic>> getPages = [
    GetPage(
      name: ScreenNames.splashScreen,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    ),
    GetPage(
      name: ScreenNames.onBoardingScreen,
      page: () => const OnBoardingScreen(),
      binding: OnBoardingBinding(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
      middlewares: [
        MiddleWare(),
      ],
    ),
    GetPage(
      name: ScreenNames.signUpScreen,
      page: () => const SignUp(),
      bindings: [
        AuthBinding(),
        SignUpBinding(),
      ],
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    ),
    GetPage(
      name: ScreenNames.signInScreen,
      page: () => SignIn(),
      bindings: [
        AuthBinding(),
        SignInBinding(),
      ],
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    ),
    GetPage(
      name: ScreenNames.passwordRecovery,
      page: () => const PasswordRecovery(),
      bindings: [
        AuthBinding(),
        SignInBinding(),
      ],
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    ),
    GetPage(
      name: ScreenNames.otpAuth,
      page: () => const OtpScreen(),
      bindings: [
        AuthBinding(),
        SignInBinding(),
        OtpBinding(),
      ],
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    ),
    GetPage(
        name: ScreenNames.informationAuth,
        page: () => const InformationAuth(),
        bindings: [
          AuthBinding(),
          SignInBinding(),
        ],
        transition: Transition.downToUp,
        transitionDuration: const Duration(milliseconds: 250),
        curve: Curves.easeIn),
    GetPage(
      name: ScreenNames.configure,
      page: () => const Configure(),
      bindings: [
        AuthBinding(),
        SignInBinding(),
      ],
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    ),
    GetPage(
      name: ScreenNames.home,
      page: () => const Home(),
      binding: HomeBinding(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    ),
    GetPage(
      name: ScreenNames.orderComplete,
      page: () => const OrderComplete(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    ),
    GetPage(
      name: ScreenNames.orderFailed,
      page: () => const OrderFailed(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    ),
    GetPage(
      name: ScreenNames.detailsProduct,
      page: () => const DetailsProduct(),
      binding: HomeBinding(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
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
