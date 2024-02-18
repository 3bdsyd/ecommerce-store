import 'package:ecommerce_store/core/constants/app_package.dart';

class SignUpScreen extends GetView<SignUpControllerImp> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PopScope(
        canPop: false,
        onPopInvoked: (didPop) => alertExitApp(context),
        child: Scaffold(
          body: GetBuilder<SignUpControllerImp>(
            builder: (_) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: const SignUpBasicWidget(),
            ),
          ),
        ),
      ),
    );
  }
}
