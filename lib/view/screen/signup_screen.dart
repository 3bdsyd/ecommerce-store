import 'package:ecommerce_store/core/constant/package_const.dart';
import 'package:ecommerce_store/view/widget/auth/button_auth_google.dart';

class SignUp extends GetView<SignUpControllerImp> {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: GetBuilder<SignUpControllerImp>(
            builder: (_) => HandlingDataRequest(
              statusRequest: controller.statusRequest,
              widget: ListView(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text('Getting Started', style: context.textTheme.titleLarge),
                  Text(
                    'Create an account to continue!',
                    style: context.textTheme.bodySmall,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 20.h,
                    ),
                    child: Form(
                      key: controller.globalKeySignUp,
                      child: Column(
                        children: [
                          FormFieldWidget(
                            signUp: true,
                            labelText: 'Enter your email or Phone number',
                            imagePrefix: ImageConst.fromFieldImageOne,
                            hinText: 'ranem.omarr@example.com',
                            validator: (String value) {
                              return FieldsValidators.emailValidator(value);
                            },
                            controller: controller.email,
                          ),
                          FormFieldWidget(
                            signUp: true,
                            labelText: 'Username',
                            imagePrefix: ImageConst.fromFieldImageTow,
                            hinText: 'ex: Ranim',
                            validator: (String value) {
                              return FieldsValidators.userNameValidator(value);
                            },
                            controller: controller.username,
                          ),
                          FormFieldWidget(
                            labelText: 'Password',
                            imagePrefix: ImageConst.fromFieldImageThree,
                            hinText: '• • • • • • • •',
                            imageSuffix: ImageConst.fromFieldImageFour,
                            signUp: true,
                            validator: (String value) {
                              return FieldsValidators.passwordValidator(value);
                            },
                            controller: controller.password,
                            obscureText: controller.obscureTextShow,
                          ),
                          ButtonSignUp(
                            signUp: true,
                            signUpController: controller,
                          ),
                        ],
                      ),
                    ),
                  ),
                  ButtonSignUpFacebook(
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  ButtonAuthGoogle(
                    onPressed: () async {
                      controller.signInWithGoogle();
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
