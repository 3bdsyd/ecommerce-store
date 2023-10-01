import 'package:ecommerce_store/core/constant/package_const.dart';

class SignIn extends GetView<SignInControllerImp> {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: ListView(
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
                        imagePrefix: ImageConst.fromFieldImageOne,
                        validator: (String value) {
                          return FieldsValidators.emailValidator(value);
                        },
                        labelText: 'Username or Email',
                      ),
                      FormFieldWidget(
                        signUp: false,
                        controller: controller.password,
                        hinText: '• • • • • • • •',
                        imagePrefix: ImageConst.fromFieldImageThree,
                        validator: (String value) {
                          return FieldsValidators.passwordValidator(value);
                        },
                        labelText: 'Password',
                      ),
                      ButtonSignUp(
                        signUp: false,
                        signInController: controller,
                      ),
                    ],
                  ),
                ),
              ),
              ButtonSignUpFacebook(
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
