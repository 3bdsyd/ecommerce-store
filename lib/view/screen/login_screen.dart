import 'package:ecommerce_store/core/constant/package_const.dart';
import 'package:ecommerce_store/core/shared/custom_button.dart';


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
            builder: (_) => HandlingDataRequest(
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
                          FormFieldWidget(
                            signUp: false,
                            controller: controller.email,
                            hinText: 'Ranimomar',
                            imagePrefix: IconConst.fromFieldImageOne,
                            validator: (String value) {
                              return FieldsValidators.emailValidator(value);
                            },
                            labelText: 'Username or Email',
                          ),
                          FormFieldWidget(
                            signUp: false,
                            controller: controller.password,
                            hinText: '• • • • • • • •',
                            imagePrefix: IconConst.fromFieldImageThree,
                            validator: (String value) {
                              return FieldsValidators.passwordValidator(value);
                            },
                            labelText: 'Password',
                          ),
                          CustomButton(
                            backgroundColor: ColorConst.primaryColor,
                            onPressed: () {
                              controller.getData();
                            },
                            widget: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(),
                                Text(
                                  'Login',
                                  style: context.textTheme.labelLarge!.copyWith(
                                    color: ColorConst.whiteColor,
                                  ),
                                ),
                                SvgPicture.asset(
                                  IconConst.fromFieldImageSignUp,
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
                                    Get.offNamed(ScreenNames.signUpScreen),
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
