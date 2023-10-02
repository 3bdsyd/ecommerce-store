import 'package:ecommerce_store/core/constant/package_const.dart';

class BodySignUpWidget extends GetView<SignUpControllerImp> {
  const BodySignUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const CustomVertical(height: 20),
        Text(
          'Getting Started',
          style: context.textTheme.titleLarge,
        ),
        Text(
          'Create an account to continue !',
          style: context.textTheme.bodySmall,
        ),
        const CustomVertical(height: 30),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Column(
            children: [
              const FormSignUpWidget(),
              const TermsSignUpWidget(),
              const CustomVertical(height: 20),
              CustomButton(
                backgroundColor: ColorConst.primaryColor,
                onPressed: () {},
                widget: const StyleButtonSignUpWidget(),
              ),
              const CustomVertical(height: 10),
              const AlreadyAccountWidget(),
            ],
          ),
        ),
        const CustomVertical(height: 20),
        Column(
          children: [
            CustomButton(
              onPressed: () {},
              widget: const CustomButtonFacebook(),
              backgroundColor: ColorConst.blueColor,
            ),
            const CustomVertical(height: 15),
            CustomButton(
              onPressed: () async {
                controller.registerWithGoogle();
              },
              widget: const CustomButtonGoogle(),
              backgroundColor: Colors.grey[100]!,
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
