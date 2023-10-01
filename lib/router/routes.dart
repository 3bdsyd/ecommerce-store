import 'package:ecommerce_store/core/constant/package_const.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeApp.themeData,
          initialRoute: ScreenNames.splashScreen,
          getPages: Routes.getPages,
          initialBinding: CrudBinding(),
        );
      },
    );
  }
}

class Routes {
  static final List<GetPage<dynamic>> getPages = [
    GetPage(
      name: ScreenNames.splashScreen,
      page: () => const SplashScreen(),
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 250),
      curve: Curves.easeIn,
    ),
    GetPage(
        name: ScreenNames.onBoardingScreen,
        page: () => const OnBoarding(),
        binding: OnBoardingBinding(),
        transition: Transition.downToUp,
        transitionDuration: const Duration(milliseconds: 250),
        curve: Curves.easeIn
        // middlewares: [
        //   MyMiddleWare(),
        // ],
        ),
    GetPage(
      name: ScreenNames.signUpScreen,
      page: () => SignUp(),
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
      page: () => const SignIn(),
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
