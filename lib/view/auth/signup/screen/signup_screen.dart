import 'package:ecommerce_store/core/constant/package_const.dart';

class SignUp extends GetView<SignUpControllerImp> {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () => alertExitApp(context),
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: GetBuilder<SignUpControllerImp>(
              builder: (_) => HandlingDataRequest(
                statusRequest: controller.statusRequest,
                widget: const BodySignUpWidget(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
