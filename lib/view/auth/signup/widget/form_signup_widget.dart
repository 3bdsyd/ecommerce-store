import 'package:ecommerce_store/core/constant/package_const.dart';

class FormSignUpWidget extends GetView<SignUpControllerImp> {
  const FormSignUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.globalKeySignUp,
      child: Column(
        children: [
          FormFieldWidget(
            signUp: true,
            labelText: 'Enter your email or Phone number',
            imagePrefix: IconConst.fromFieldImageOne,
            hinText: 'ranem.omarr@example.com',
            validator: (String value) {
              return FieldsValidators.emailValidator(value);
            },
            controller: controller.email,
          ),
          FormFieldWidget(
            signUp: true,
            labelText: 'Username',
            imagePrefix: IconConst.fromFieldImageTow,
            hinText: 'ex: Ranim',
            validator: (String value) {
              return FieldsValidators.userNameValidator(value);
            },
            controller: controller.username,
          ),
          FormFieldWidget(
            labelText: 'Password',
            imagePrefix: IconConst.fromFieldImageThree,
            hinText: '• • • • • • • •',
            imageSuffix: IconConst.fromFieldImageFour,
            signUp: true,
            validator: (String value) {
              return FieldsValidators.passwordValidator(value);
            },
            controller: controller.password,
            obscureText: controller.obscureTextShow,
          ),
        ],
      ),
    );
  }
}
