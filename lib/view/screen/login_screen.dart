import 'package:ecommerce_store/core/constants/app_package.dart';

class SignIn extends GetView<SignInControllerImp> {
  SignIn({super.key});
  final AuthControllerImp authController = Get.find();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: GetBuilder<SignInControllerImp>(
            builder: (_) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: ListView(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Let\'s Sign You In',
                    style: context.textTheme.titleLarge,
                  ),
                  Text(
                    'Welcome back, you\'ve been missed!',
                    style: context.textTheme.bodySmall,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 20.h,
                    ),
                    child: Form(
                      key: controller.globalKeySignIn,
                      child: Column(
                        children: [
                          CustomFormField(
                            controller: controller.email,
                            hinText: 'Ranimomar',
                            imagePrefix: AppIcon.fromFieldImageOne,
                            validator: (String value) {
                              return FieldsValidators.emailValidator(value);
                            },
                            label: 'Ranimomar',
                            // labelText: 'Username or Email',
                          ),
                          CustomFormField(
                            controller: controller.password,
                            hinText: '• • • • • • • •',
                            imagePrefix: AppIcon.fromFieldImageThree,
                            validator: (String value) {
                              return FieldsValidators.passwordValidator(value);
                            },
                            label: 'Password',
                            // labelText: 'Password',
                          ),
                          CustomButton(
                            backgroundColor: AppColor.primaryColor,
                            onPressed: () {},
                            widget: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(),
                                Text(
                                  'Login',
                                  style: context.textTheme.labelLarge!.copyWith(
                                    color: AppColor.whiteColor,
                                  ),
                                ),
                                SvgPicture.asset(
                                  AppIcon.fromFieldImageSignUp,
                                  width: 28.w,
                                  fit: BoxFit.scaleDown,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Don\'t have an account? ',
                                style: context.textTheme.labelMedium,
                              ),
                              GestureDetector(
                                onTap: () =>
                                    Get.offNamed(AppNameScreen.signUpScreen),
                                child: Text(
                                  'Sign up',
                                  style:
                                      context.textTheme.labelMedium!.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // ButtonSignUpFacebook(
                  //   onPressed: () {},
                  // ),
                  SizedBox(
                    height: 10.h,
                  ),
                  // ButtonAuthGoogle(
                  //   onPressed: () async {
                  //     authController.signInWithGoogle();
                  //   },
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
