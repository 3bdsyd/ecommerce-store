import 'package:ecommerce_store/core/constants/app_package.dart';

class Routes {
  static final List<GetPage<dynamic>> getPages = [
    GetPage(
      name: AppNameScreen.splashScreen,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    ),
    GetPage(
      name: AppNameScreen.onBoardingScreen,
      page: () => const OnBoardingScreen(),
      binding: OnBoardingBinding(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
      // middlewares: [
      //   MiddleWare(),
      // ],
    ),
    GetPage(
      name: AppNameScreen.signUpScreen,
      page: () => const SignUpScreen(),
      bindings: [
        SignUpBinding(),
        AuthBinding(),
      ],
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    ),
    GetPage(
      name: AppNameScreen.signInScreen,
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
      name: AppNameScreen.passwordRecovery,
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
      name: AppNameScreen.otpAuth,
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
        name: AppNameScreen.informationAuth,
        page: () => const InformationAuth(),
        bindings: [
          AuthBinding(),
          SignInBinding(),
        ],
        transition: Transition.downToUp,
        transitionDuration: const Duration(milliseconds: 250),
        curve: Curves.easeIn),
    GetPage(
      name: AppNameScreen.configure,
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
      name: AppNameScreen.home,
      page: () => const Home(),
      binding: HomeBinding(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    ),
    GetPage(
      name: AppNameScreen.orderComplete,
      page: () => const OrderComplete(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    ),
    GetPage(
      name: AppNameScreen.orderFailed,
      page: () => const OrderFailed(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    ),
    GetPage(
      name: AppNameScreen.detailsProduct,
      page: () => const DetailsProduct(),
      binding: HomeBinding(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    ),
  ];
}
