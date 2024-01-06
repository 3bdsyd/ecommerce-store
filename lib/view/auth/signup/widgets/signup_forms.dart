import 'package:ecommerce_store/core/constants/app_package.dart';

class SignUpFormsWidget extends GetView<SignUpControllerImp> {
  const SignUpFormsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Form(
        key: controller.globalKeySignUp,
        child: Column(
          children: [
            CustomFormField(
              imagePrefix: AppIcon.fromFieldImageOne,
              hinText: 'name@example.com',
              validator: (String value) =>
                  FieldsValidators.emailValidator(value),
              controller: controller.email,
              label: 'email',
            ),
            CustomFormField(
              imagePrefix: AppIcon.fromFieldImageTow,
              hinText: 'ex: adam',
              validator: (String value) =>
                  FieldsValidators.userNameValidator(value),
              controller: controller.username,
              label: 'Username',
            ),
            CustomFormField(
              imagePrefix: AppIcon.fromFieldImageThree,
              hinText: '• • • • • • • •',
              imageSuffix: AppIcon.fromFieldImageFour,
              validator: (String value) =>
                  FieldsValidators.passwordValidator(value),
              controller: controller.password,
              obscureText: controller.obscureTextShow,
              label: 'Password',
            ),
          ],
        ),
      ),
    );
  }
}
