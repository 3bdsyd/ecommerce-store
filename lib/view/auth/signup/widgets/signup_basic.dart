import 'package:ecommerce_store/core/constants/app_package.dart';

class SignUpBasicWidget extends GetView<SignUpControllerImp> {
  const SignUpBasicWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: ListView(
        children: [
          const CustomVertical(height: 20),
          const SignUpTitleWidget(),
          const CustomVertical(height: 30),
          const SignUpFormsWidget(),
          const SignUpTermsWidget(),
          const CustomVertical(height: 20),
          CustomButton(
            backgroundColor: AppColor.primaryColor,
            onPressed: () => controller.submitSignUp(),
            widget: const SignUpStyleButtonWidget(),
          ),
          const CustomVertical(height: 10),
          const SignUpLableAlreadyAccountWidget(),
          CustomVertical(height: Get.height / 20),
          CustomButton(
            onPressed: () => controller.signInWithFacebook(),
            widget: const CustomStyleButtonFacebook(),
            backgroundColor: AppColor.blueColor,
          ),
          const CustomVertical(height: 15),
          CustomButton(
            onPressed: () => controller.signInWithGoogle(),
            widget: const CustomStyleButtonGoogle(),
            backgroundColor: Colors.grey[100]!,
          ),
          const CustomVertical(height: 20),
        ],
      ),
    );
  }
}
